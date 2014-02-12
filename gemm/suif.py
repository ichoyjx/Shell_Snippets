#!/usr/bin/python -tt

import os
import sys

def process(filename):
    first_com = 'scc -V -.spd ' + filename + '.f'
    os.system(first_com)
    second_com = 'porky -forward-prop ' + filename + '.spd ' + filename + '.sp1'
    os.system(second_com)
    third_com = 'porky -dead-code ' + filename + '.sp1 ' + filename + '.sp2'
    os.system(third_com)

def main():
    if len(sys.argv) < 2:
        print 'Usage: python suif.py file.f'
        sys.exit()

    filename = sys.argv[1]
    filename = filename[:-2]
    process(filename)

# call main()
if __name__ == '__main__':
    main()
