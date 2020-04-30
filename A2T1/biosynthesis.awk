# save as biosynthesis.awk
{split($0, data, "\t")}
# split the annotation table into array seperated by \t 
{if (data[3] ~ /(Purine|Pyrimidine) biosynthesis/) print $0}
# for those in the metabolism section that contain the regular expression
# (Purine|Pyrimidine) biosynthesis print that row. If one wnated to print
# the function field replace the data[3] with data[2] 
