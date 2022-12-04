import std/sets

let ascii_letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

var 
    total: int = 0
    counter: int = 0
    line_group: seq[string] = @[]

for line in lines "3/input.txt":
    counter += 1
    line_group.add(line)
    if counter == 3:
        var 
            s1 = toHashSet(line_group[0])
            s2 = toHashSet(line_group[1])
            s3 = toHashSet(line_group[2])
            overlap = s1 * s2 * s3

        for letter in overlap:
            var priority = find(ascii_letters, letter) + 1
            total += priority

        # Reset for next group
        line_group = @[]
        counter = 0
echo total
    
