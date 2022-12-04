import strutils

type
    Interval = tuple
        start: int
        stop: int


proc toIntervals(line: string): (Interval, Interval) =
    var 
        data = split(line, ",")
        d0_sec = split(data[0], "-")
        d0_start = parseInt(d0_sec[0])
        d0_stop = parseInt(d0_sec[1])
        d1_sec = split(data[1], "-")
        d1_start = parseInt(d1_sec[0])
        d1_stop = parseInt(d1_sec[1])

    let 
        ivl0: Interval = (d0_start, d0_stop)
        ivl1: Interval = (d1_start, d1_stop)
    return (ivl0, ivl1)


proc overlaps(outer: Interval, inner: Interval): bool = 
    var
        start_in = (outer.start <= inner.start) and (inner.start <= outer.stop)
        stop_in = (outer.start <= inner.stop) and (inner.stop <= outer.stop)
    start_in or stop_in


var total = 0
for line in lines "4/input.txt":
    let
        (ivl0, ivl1) = toIntervals(line)
        any_overlap = overlaps(ivl0, ivl1) or overlaps(ivl1, ivl0)
    if any_overlap:
        total += 1
echo total

