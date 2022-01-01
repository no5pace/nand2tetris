load Mem16Bit.hdl,
output-file Mem16Bit.out,
output-list in%B1.16.1 load out%B1.16.1;

set in %B0000000000000000,
set load 0,
eval, output,
eval, output,
set load 1,
eval, output,
eval, output,
set load 0,
eval, output,
eval, output;

set in %B1111111111111111,
set load 0,
eval, output,
eval, output,
set load 1,
eval, output,
eval, output,
set load 0,
eval, output,
eval, output;

set in %B1010101010101010,
set load 0,
eval, output,
eval, output,
set load 1,
eval, output,
eval, output,
set load 0,
eval, output,
eval, output;

set in %B0101010101010101,
set load 0,
eval, output,
eval, output,
set load 1,
eval, output,
eval, output,
set load 0,
eval, output,
eval, output;

set in %B1110101000101011,
set load 0,
eval, output,
eval, output,
set load 1,
eval, output,
eval, output,
set load 0,
eval, output,
eval, output;

set in %B0010010011011001,
set load 0,
eval, output,
eval, output,
set load 1,
eval, output,
eval, output,
set load 0,
eval, output,
eval, output;
