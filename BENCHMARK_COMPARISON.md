# Markdown Processor Comparison Benchmark

## Available Tools

Found 7 tools:
- apex
- cmark-gfm
- cmark
- pandoc
- multimarkdown
- kramdown
- marked

## Processor Comparison

**File:** `/Users/ttscoff/Desktop/Code/apex/tests/comprehensive_test.md` (17017 bytes, 621 lines)

| Processor | Time (ms) | Relative |
|-----------|-----------|----------|
| apex | 754.00 | 1.00x |
| cmark-gfm | 29.00 | .03x |
| cmark | 36.00 | .04x |
| pandoc | 120.00 | .15x |
| multimarkdown | 22.00 | .02x |
| kramdown | 377.00 | .50x |
| marked | 110.00 | .14x |

## Apex Mode Comparison

**Test File:** `/Users/ttscoff/Desktop/Code/apex/tests/comprehensive_test.md`

| Mode | Time (ms) | Relative |
|------|-----------|----------|
| commonmark | 20.00 | 1.00x |
| gfm | 24.00 | 1.20x |
| mmd | 21.00 | 1.05x |
| kramdown | 26.00 | 1.30x |
| unified | 679.00 | 33.95x |
| default (unified) | 703.00 | 35.15x |

## Apex Feature Overhead

| Features | Time (ms) |
|----------|-----------|
| CommonMark (minimal) | 26.00 |
| + GFM tables/strikethrough | 27.00 |
| + All Apex features | 711.00 |
| + Pretty printing | 710.00 |
| + Standalone document | 671.00 |

---

*Benchmark Complete*
