#!/bin/bash
fail () {
  echo TEST FAILED
  exit 1
}
echo =====
echo RUNTIME TESTS
echo testing z01 output
z01o="4 3.66667"
cmp <(./z01) <(echo $z01o) || fail
echo OK
echo testing z02 output
z02i="2 3 4 2 7 4 7 2 0"
z02o1="Min = 2 3 razy"
z02o2="Max = 7 2 razy"
diff -u \
  <(echo $z02i | exec stdbuf -i0 -o0 ./z02 | sed 's/^[> ]*//') \
  <(echo -e "$z02o1\n$z02o2") || fail
echo OK
echo testing z03 output
z03o1="0.7069528 radians = approx. 40d30m19s which is 0.7069505 rad"
z03o2="0.7069530 radians = approx. 40d30m20s which is 0.7069553 rad"
cmp <(./z03) <(echo -e "$z03o1\n$z03o2") || fail
echo OK
echo RUNTIME TESTS PASSED
