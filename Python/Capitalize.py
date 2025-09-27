#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the solve function below.
def solve(s):
    ans = ""
    capitalize_next = True
    for ch in s:
        if ch == " ":
            ans += ch
            capitalize_next = True
        elif capitalize_next:
            ans += ch.upper()
            capitalize_next = False
        else:
            ans += ch.lower()
    return ans

    

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    result = solve(s)

    fptr.write(result + '\n')

    fptr.close()
