# benchmarks

To get the int-map files registered: 

`cd int-map && make && make TARGETDIR={...}/benchmarks/ install` 

To use any needed files from tree-automata project files:

`cd tree-automata-coq-gym && make && make TARGETDIR={...}/benchmarks/ install` 

To run any test, just go into that directory and run `make`. If the project was not previously made, make sure to comment out the `lfind` tactic call, call `make` and then add the tactic back and remake. This is also assuming that `lfind` was previously and properly installed. Planning on adding a script to run batches of benchmarks at once.