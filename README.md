# Lemma Synthesis Evaluation Benchmarks

This repo contains a variety of benchmarks that were used to evaluate the `dilemma` lemma synthesis tactic. The benchmarks either came from the [Verified Function Algorithms textbook](https://softwarefoundations.cis.upenn.edu/vfa-current/index.html) or were used to evaluate [prior tools](https://github.com/AishwaryaSivaraman/lemmafinder).

## Instructions to Run
First, install `dilemma` tactic. Installation instructions and source can be found [here]().

Then, to run each benchmark:
1. Run `cd ../benchmarks/{test}/common && coq_makefile -f _CoqProject -o Makefile`
2. To get access to needed definitions and decidability proofs for test run: `cd ../benchmarks/{test}/common && make && make install`
3. To run individual test/file: `cd ../benchmarks/{test} && coqc {file}`

## Results Cited in Paper
The folder `paper_results` contains the logs of all the results that were listed in the [paper](). The folder `paper_results/processed_results` stores logs that are summaries of each benchmark. 

Note that there is only one compiler result, so there is no processed log for that test. 

Additionally, for clam and lia benchmarks, the processed logs might not contain all of the results because we had to go back run/add/remove various tests in order to match the prior work comparison exactly. Specifically, there are three more test results in the `lia_atomic` folder than were listed in the processe log; and the tests from `clam_added` are not included in the overall `clam_atomic` nor `clam_implication` summary log, as they were ran later. The exact tests used to compare to the prior tool were found in their artifact (can be listed in any file labeled `lemmafinder_bench.json`).
