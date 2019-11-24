grep -ril "abe's oddysee" $(find . -name '*.html') | while read -r line ; do
sed -n 's/tags: \[\(.*\)\]/tags: ["abe'\''s oddysee", \1]/p' $line
done
