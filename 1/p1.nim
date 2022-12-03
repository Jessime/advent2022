import strutils as str

var current: int = 0
var max_calories: int = 0
for line in lines "1/input.txt":
    if line.len() == 0:
        if current > max_calories:
            max_calories = current
        current = 0
    else:
        current += str.parseInt(line)
if current > max_calories:
    max_calories = current
echo max_calories
