# STUDENT_NAME: ANMOLDEEP SANDHU
# STUDENT_ID: 10440057
# PORTFOLIO_2
#!/bin/bash
# if statement begins whether the file name rectangle.txt exist or not.
if ! [ -f rectangle.txt ] ; then
    echo "NO file to process." # if the text file does not exist this message will print.
    exit 0
else # if the text file exist the following code run to edit the file.
    sed 's/^/Name:/; s/,/  Height:/1; s/,/  Width: /1; s/,/  Area: /1; s/,/  Colour: /1; 1d' rectangle.txt > rectangle_f.txt
    # using multiple sed substitute strings commas replaced with the height,width,area and colour.
    # Another replacement argument used to put the Name at the starting of each line.
    # 1d delete the header line of text file. 
    # rectangle.txt > rectangle_f.txt to save the edited file into new file named as rectangle_f.txt.
        cat rectangle_f.txt # cat the new file.
    printf "\n"
fi