# Adjust your path on your machine
#output directory where we will save results
RESULT_DIR=/Users/Helen/Desktop/data-shell/results   #$PWD/results
#input directory for molecules data
INPUT_DIR=/Users/Helen/Desktop/data-shell/molecules

#Do not change here except you know what you are doing!

rm -rf $RESULT_DIR # remove it first so as to make code truly reproducible
mkdir $RESULT_DIR # make dir for results again
#touch $RESULT_DIR/length.txt # make empty file to which to append
for filename in $INPUT_DIR/*.pdb
do
wc -l $filename | sort -n | head -n 1 >> $RESULT_DIR/lengths.txt
done

cat $RESULT_DIR/lengths.txt

# will append into empty file for each loop iteration
# plus edited now to check versioning control
