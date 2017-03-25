* ltspice digital cells, Uros Platise <uros@isotel.eu>, 25. March 2017

.SUBCKT BUF A Y
A1 A 0 0 0 0 0 Y 0 BUF
.ENDS NOT

.SUBCKT NOT A Y
A1 A 0 0 0 0 Y 0 0 BUF
.ENDS NOT

.SUBCKT NAND A B Y
A1 A B 0 0 0 Y 0 0 AND
.ENDS NAND

.SUBCKT NOR A B Y
A1 A B 0 0 0 Y 0 0 OR
.ENDS NOR

.SUBCKT DLATCH E D Q
A1 D 0 0 0 0 N001 0 0 BUF
A2 D E 0 0 0 0 N003 0 AND
A3 N001 E 0 0 0 0 N002 0 AND
A4 N003 N002 0 0 0 0 Q 0 SRFLOP
.ENDS DLATCH

.SUBCKT DFF C D Q
A1 D 0 C 0 0 0 Q 0 DFLOP
.ENDS DFF
