#!/bin/bash
# Usage: file_to_upload label

source activate user
anaconda login --username mario21ic --password blazingdb2018123
echo "anaconda upload --user BlazingDB $1 --label $2"
anaconda upload --user BlazingDB $1 --label main --label cuda9.5 --label dev --lavel prod


echo "PRINT LABELSSS ==> " $2
