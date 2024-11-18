# benchmarks

First, install findlemma tactic.

Then, to run each benchmark (there are also READMEs in each folder):
1. Run `cd ../benchmarks/{test}/common && coq_makefile -f _CoqProject -o Makefile`
2. To get access to needed definitions and decidability proofs for test run: `cd ../benchmarks/{test}/common && make && make install`
3. To run individual test/file: `cd ../benchmarks/{test} && coqc {file}`

## Status
- Still missing proofs: `vfa_bagperm`, `vfa_binom`, `vfa_sort`
- Still need to setup tests: `clam`, `lia`, `vfa_redblack`, `vfa_searchtree`
- Still need to run tests: `vfa_merge`
- Completed tests (still need to analyze): 
- Tests ran and results analyzed: `vfa_selection`