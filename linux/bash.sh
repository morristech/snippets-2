# Copy recursively
find ./dir1 -name "*.jpg" -type f -exec cp {} ./dir2 \;

# Rename file recursively
rename "s/$1/$2/g" $(find ./ -type f | grep -vE '\.git|\.swp')

# Replace file content recursively
find ./ -type f | grep -vE '\.git|\.swp' | xargs sed -i -e "s/$1/$2/g"
