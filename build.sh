FILES="$(find notebooks -type f -name '*.ipynb')"
for f in $FILES
do
    if [ ${file: -17} != "-checkpoint.ipynb" ]
    then
        nb2hugo $f --site-dir base --section post
    fi
done
hugo -s base
