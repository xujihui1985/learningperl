```perl
perl -p  #this will process the file line by line 
perl -e  #execute the script
eg: perl -e "use Data::Dumper; Dumper(...)"

```

then put them together

```perl
perl -pe '' <filename>
#this print the file line by line
e must after p
```

## replace the text in the file

```perl
perl -pe 's/\bhead\b/HEAD/gi' ../fixtures/test1.xml
# replace the head by HEAD in the file test1.xml
# the filename can be wildcard

perl -pe 's/\bhead\b/HEAD/gi' ../fixtures/test1.xml > <newfilename>
```

## editing files in place

```perl
perl -i.<extension> -pe 's/\bhead\b/HEAD/ig' ../fixtures/test1.xml
#this will replace the test1.xml file and also backup the origin file to test1.xml.<extension>
```

