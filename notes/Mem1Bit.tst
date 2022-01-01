load Mem1Bit.hdl,
output-file Mem1Bit.out,
output-list in load out;

set in 1, set load 1,
eval, output;

set in 0, set load 0,
eval, output;

set in 0, set load 0,
eval, output;

set in 0, set load 1,
eval, output;

set in 0, set load 0,
eval, output;
