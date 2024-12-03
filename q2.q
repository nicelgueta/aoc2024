data: "I" $ flip " " vs/: read0 `:2.txt

/ get the deltas can remove first row
dd: deltas data
l: 1 - count dd
nd: l sublist dd

/ max and comparison operator yields a boolean vector (binary)
/ so using bitwise logic to filter out unpermitted criteria
not_bidirect: ((max nd > 0) & (min nd > 0)) | ((max nd < 0) & (min nd < 0))
not_gt_3: min 4 >  abs nd
p1: sum not_bidirect & not_gt_3

show p1
\\