import os
import sys

def main():
    # Assume the name of the input file based on definition given
    input_file = './input.csv'

    # Attempt to open the input file. Exit with error message if it doesn't exist.
    try:
        f = open(input_file, 'r')
    except:
        sys.exit('The input file does not exist.')

    # Remove the output file if it already exists
    # This isn't really needed in this instance because of running in the docker container
    if os.path.exists('./output.csv'):
        os.remove('./output.csv')
    
    # Generate the list of words from the given file
    data = [w for w in f.readline().split(',')]

    # Close the input file because we no longer need it
    f.close()

    # Sort the strings into descending alphabetical order
    # because that's what the directions said even if the
    # example was ascending order
    data.sort()

    # Open and write the output file. Exit with error message if an error occurs
    try:
        with open('./output.csv', 'x') as ouput:
            output.write(','.join(data))
            output.write('\n')
    except:
        sys.exit('Something went wrong writing the output file.')


if __name__ == "__main__":
    main()