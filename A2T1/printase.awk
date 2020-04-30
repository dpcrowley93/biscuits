# save as printase.awk
{split($0, data, "\t")} {if (data[2] ~ /ase/) print $0}
# this splits the data by tab seperators and finds those in the second tab 
# that contain the string ase and prints those with the $0 
