#include <stdint.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

extern "C" {
#include "apex/apex.h"
}

extern "C" int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
    if (size == 0) return 0;

    apex_options options = apex_options_default();
    options.mode = APEX_MODE_UNIFIED;
    options.output_format = APEX_OUTPUT_TERMINAL;
    
    char *term = apex_markdown_to_html((const char *)data, size, &options);
    if (term) {
        apex_free_string(term);
    }
    
    return 0;
}
