/ read input into two vectors l and r and sort smallest to largest
tbl: "I" $ flip "   " vs/: read0 `:1.txt
l: asc tbl[0]
r: asc tbl[1]

/ part 1 answer
show sum abs r-l

/ create Counter for r
m: count each group r

/ func to map each value to multiplier
f: {m[x]}

/part 2 ans
show sum l * f l
\\