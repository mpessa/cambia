import os
import sys

def main():
    input_file = './input.csv'

    try:
        f = open(input_file, 'r')
    except:
        sys.exit('The input file does not exist.')

if __name__ == "__main__":
    main()