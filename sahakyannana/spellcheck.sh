cat text_to_spell | fmt -w 1 | tr [:upper:] [:lower:] | sort | uniq | sed 's/\./ /g' | comm -13 dictionary -
