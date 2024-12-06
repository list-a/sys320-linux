#!/bin/bash
url="http://10.0.17.30\Assignment.html"

data=$(curl -sL "$url" | \
xmlstarlet format --html --recover 2>/dev/null | \
xmlstarlet select --template --value-of "//table[@id='data']//tr/td" --nl)
    
for ((i=0; i<"$data"; i++))
do
burger=$(echo "$data" | head -n $i | tail -n 1)
done
