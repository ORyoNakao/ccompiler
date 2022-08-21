#! /bin/bash

assert()
{
    excepted="$1"
    input="$2"

    ./ccompiler "$input" > tmp.s
    cc -o tmp tmp.s
    ./tmp
    actual="$?"

    if [ "$actual" = "$excepted" ]; then
        echo "$input => $actual"
    else
        echo "$input => $excepted excepted, but got $actual"
    fi
}

assert 0 0
assert 42 42
assert 21 "5+20-4"

echo OK