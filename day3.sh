cat day3_data.txt|
grep -Eo "mul\([0-9]{,3},[0-9]{,3}\)" |
tr "[\(,\,,\)]" " "|
awk ' { n += $2 * $3 } END { print n }'