# benchmarks

To get the int-map files registered: 

`cd int-map && make && make TARGETDIR={...}/lfind/benchmarks/ install`

To use any needed files from other tree-automata project files:

`cd tree-automata-coq-gym && make && make TARGETDIR={...}/lfind/benchmarks/ install`