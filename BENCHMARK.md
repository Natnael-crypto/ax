# Apex Markdown Processor - Performance Benchmark

## Test Document

- **File:** `/Users/ttscoff/Desktop/Code/apex/tests/comprehensive_test.md`
- **Lines:**      621
- **Words:**     2582
- **Size:**    17017 bytes

## Output Modes

| Mode | Iterations | Average (ms) | Min (ms) | Max (ms) | Throughput (words/sec) |
|------|------------|--------------|---------|---------|------------------------|
| Fragment Mode (default HTML output) | 50 | 685 | 632 | 829 | 3797.05 |
| Pretty-Print Mode (formatted HTML) | 50 | 672 | 631 | 833 | 3853.73 |
| Standalone Mode (complete HTML document) | 50 | 696 | 637 | 874 | 3742.02 |
| Standalone + Pretty (full features) | 50 | 687 | 634 | 809 | 3797.05 |

## Mode Comparison

| Mode | Iterations | Average (ms) | Min (ms) | Max (ms) | Throughput (words/sec) |
|------|------------|--------------|---------|---------|------------------------|
| CommonMark Mode (minimal, spec-compliant) | 50 | 8 | 7 | 20 | 0.00 |
| GFM Mode (GitHub Flavored Markdown) | 50 | 8 | 8 | 13 | 0.00 |
| MultiMarkdown Mode (metadata, footnotes, tables) | 50 | 9 | 8 | 17 | 0.00 |
| Kramdown Mode (attributes, definition lists) | 50 | 11 | 9 | 17 | 258200.00 |
| Unified Mode (all features enabled) | 50 | 674 | 633 | 874 | 3853.73 |
| Default Mode (unified, all features) | 50 | 677 | 630 | 769 | 3853.73 |

---

*Benchmark Complete*
