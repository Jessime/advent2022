import std/sets

let ascii_letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

var total = 0
for line in lines "3/input.txt":
    var 
        half = (len(line)/2).toInt
        h1 = line[0 .. half - 1]
        h2 = line[half .. len(line)-1]
        set1 = toHashset(h1)
        set2 = toHashset(h2)
        overlap = set1 * set2

    for letter in overlap:
        var priority = find(ascii_letters, letter) + 1
        total += priority
echo total