import sys
import os

for test in os.listdir("/home/anabrendel/lfind/benchmarks/tree-automata/defs_results/fail"):
    print(test.removeprefix("_lfind_"))