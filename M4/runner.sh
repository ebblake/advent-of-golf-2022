#!/bin/sh

set -e
if test $# -eq 1; then
    if test -f day_$1.m4; then
        { cat ../solutions/$1/1.solution; echo; \
          cat ../solutions/$1/2.solution; echo; } | sed -n '/./p' > expected
        { m4 -Di=../inputs/$1.in day_$1.m4 || :; echo; } \
            | tr -s '[:space:]' '\n' | sed -n '/./p' > actual
    else
        echo "No golfed submissions for entire day $1"; exit 2;
    fi
elif test $# -eq 2; then
    if test -f day_$1_$2.m4; then
        { cat ../solutions/$1/$2.solution; echo; } | sed -n '/./p' > expected
        { m4 -Di=../inputs/$1.in day_$1_$2.m4 || :; echo; } \
            | tr -s '[:space:]' '\n' | sed -n '/./p' > actual
    else
        echo "No golfed submissions for day $1 part $2"; exit 2;
    fi
fi
diff -u expected actual
cat actual
