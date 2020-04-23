cat paper.aux | grep '\\citation' | sed -e 's/\\citation{\(.*\)}/\1/g' -e 's/ *\(.*\) */\1/g' | tr ',' '\012' | sort -u > paper.keys
cat paper.bib | grep "@.*{.*," | sed -e 's/.*{\(.*\),/\1/' | sort -u > bib.keys
grep -v -f paper.keys bib.keys
