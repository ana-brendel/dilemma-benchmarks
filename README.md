# benchmarks

First, install findlemma tactic.

Then, to run each benchmark:
1. Run `cd ../benchmarks/{test}/common && coq_makefile -f _CoqProject -o Makefile`
2. To get access to needed definitions and decidability proofs for test run: `cd ../benchmarks/{test}/common && make && make install`
3. To run individual test/file: `cd ../benchmarks/{test} && coqc {file}`
