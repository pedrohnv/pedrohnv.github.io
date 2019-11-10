FILES="$(find notebooks -type f -name '*.ipynb' -not -path "*/.ipynb_checkpoints/*")"
for f in $FILES
do
    nb2hugo $f --site-dir base --section post
done
hugo -s base
