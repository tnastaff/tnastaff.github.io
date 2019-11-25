# Find all HTML files.
htmls=$(find . -name '*.html')

# Delete all tags.
for i in $htmls ; do
  sed -i 's/tags: \[.*\]/tags: []/' $i
done

# Add Game tags.
for i in $'abe\'s oddysee' $'abe\'s exoddus' $'munch\'s oddysee' $'stranger\'s wrath' $'new \'n\' tasty' $'soulstorm' {1997..2019}; do
  grep -ril "$i" $htmls | while read -r line ; do
    sed -i "s/tags: \[\(.*\)\]/tags: [\"$i\", \1]/" $line
  done
done
