#!/bin/bash -eu

# Install required dependencies
if command -v apt-get >/dev/null; then
    apt-get update && apt-get install -y cmake
fi

# compile apex library
mkdir -p build
cd build
# We need to compile with fuzzer flags
cmake .. -DBUILD_SHARED_LIBS=OFF \
  -DCMAKE_C_COMPILER="$CC" \
  -DCMAKE_CXX_COMPILER="$CXX" \
  -DCMAKE_C_FLAGS="$CFLAGS" \
  -DCMAKE_CXX_FLAGS="$CXXFLAGS"
make -j$(nproc) apex_static
cd ..

LIBS=$(find build -name "*.a" | tr '\n' ' ')

# build fuzzer 1
$CXX $CXXFLAGS $LIB_FUZZING_ENGINE -std=c++17 \
    -I$SRC/include \
    $SRC/fuzz/apex_html_fuzzer.cc \
    $LIBS \
    -o $OUT/apex_html_fuzzer

# build fuzzer 2
$CXX $CXXFLAGS $LIB_FUZZING_ENGINE -std=c++17 \
    -I$SRC/include \
    $SRC/fuzz/apex_terminal_fuzzer.cc \
    $LIBS \
    -o $OUT/apex_terminal_fuzzer

# package seed corpora
zip -j $OUT/apex_html_fuzzer_seed_corpus.zip \
    $SRC/fuzz/corpus/apex_html_fuzzer/* || true

zip -j $OUT/apex_terminal_fuzzer_seed_corpus.zip \
    $SRC/fuzz/corpus/apex_terminal_fuzzer/* || true
