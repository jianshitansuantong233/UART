# UART
## Top modules
### Write
Referred from https://www.cnblogs.com/lwybky/p/3509463.html

Use the central button as a send request, switch [0 : 7] are used as the ASCII (in binary) of the symbol we are sending.
### Read
Detect the first 0 as the start point, create and synchronize the internal clock signal used for sampling input signal. 

Each signal is sampled three times, if two 1 are detected, we regard the signal to be a 1, otherwise is 0.
This measure is aimed at decreasing side effects caused by unstable signal.

The input symbol is described by LED [8 : 15]. It is the symbol represented in binary ASCII.
