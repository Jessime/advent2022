import strutils as str
import algorithm
import system
import std/sequtils

var current: int = 0
var top3 = @[0, 0, 0]


for line in lines "1/input.txt":
    if line.len() == 0:
        if current > min(top3):
            top3[0] = current
            top3 = top3.sorted
        current = 0
    else:
        current += str.parseInt(line)
# if current > max_calories:
#   max_calories = current
echo top3.foldl(a + b)
