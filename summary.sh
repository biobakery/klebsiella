#! /usr/bin/sh


# number of MUC1 proteins that aren't covered in PARENT
printf "MUC1, notParent\t"
grep MUC1 CoverageFiltered.txt | cut -f 3 | awk '!NF {s+=1} END {print s}' 
printf "MUC1, notNMV1\t"
# number of MUC1 proteins that aren't covered in NMV1
grep MUC1 CoverageFiltered.txt | cut -f 4 | awk '!NF {s+=1} END {print s}' 
printf "MUC1, notNMV2\t"
# number of MUC1 proteins that aren't covered in NMV2
grep MUC1 CoverageFiltered.txt | cut -f 5 | awk '!NF {s+=1} END {print s}'
printf "MUC1, notNMV3\t"
# number of MUC1 proteins that aren't covered in NMV3
grep MUC1 CoverageFiltered.txt | cut -f 6 | awk '!NF {s+=1} END {print s}'  
printf "MUC1, notNMV4\t"
# number of MUC1 proteins that aren't covered in NMV4
grep MUC1 CoverageFiltered.txt | cut -f 7 | awk '!NF {s+=1} END {print s}' 

# number of PARENT proteins that aren't covered in MUC1

printf "PARENT, notMUC1\t"
grep PAR CoverageFiltered.txt | cut -f 2 | awk '!NF {s+=1} END {print s}' 
# number of PARENT proteins that aren't covered in NMV1
printf "PARENT, notNMV1\t"
grep PAR CoverageFiltered.txt | cut -f 4 | awk '!NF {s+=1} END {print s}' 
# number of PARENT proteins that aren't covered in NMV2
printf "PARENT, notNMV2\t"
grep PAR CoverageFiltered.txt | cut -f 5 | awk '!NF {s+=1} END {print s}' 
# number of PARENT proteins that aren't covered in NMV3
printf "PARENT, notNMV3\t"
grep PAR CoverageFiltered.txt | cut -f 6 | awk '!NF {s+=1} END {print s}' 
# number of PARENT proteins that aren't covered in NMV4
printf "PARENT, notNMV4\t"
grep PAR CoverageFiltered.txt | cut -f 7 | awk '!NF {s+=1} END {print s}' 

# number of NMV1 proteins that aren't covered in PARENT
printf "NMV1, notPARENT\t"
grep NMV1 CoverageFiltered.txt | cut -f 3 | awk '!NF {s+=1} END {print s}' 
# number of NMV1 proteins that aren't covered in NMV1
printf "NMV1, notMUC1\t"
grep NMV1 CoverageFiltered.txt | cut -f 2 | awk '!NF {s+=1} END {print s}' 
# number of NMV1 proteins that aren't covered in NMV2
printf "NMV1, notNMV2\t"
grep NMV1 CoverageFiltered.txt | cut -f 5 | awk '!NF {s+=1} END {print s}'
# number of NMV1 proteins that aren't covered in NMV3
printf "NMV1, notNMV3\t"
grep NMV1 CoverageFiltered.txt | cut -f 6 | awk '!NF {s+=1} END {print s}'  
# number of NMV1 proteins that aren't covered in NMV4
printf "NMV1, notNMV4\t"
grep NMV1 CoverageFiltered.txt | cut -f 7 | awk '!NF {s+=1} END {print s}' 

# number of NMV2 proteins that aren't covered in PARENT
printf "NMV2, notPARENT\t"
grep NMV2 CoverageFiltered.txt | cut -f 3 | awk '!NF {s+=1} END {print s}' 
# number of MCUC1 proteins that aren't covered in NMV2
printf "NMV2, notMUC1\t"
grep NMV2 CoverageFiltered.txt | cut -f 2 | awk '!NF {s+=1} END {print s}' 
# number of NMV1 proteins that aren't covered in NMV2
printf "NMV2, notNMV1\t"
grep NMV2 CoverageFiltered.txt | cut -f 4 | awk '!NF {s+=1} END {print s}'
# number of NMV2 proteins that aren't covered in NMV3
printf "NMV2, notNMV3\t"
grep NMV2 CoverageFiltered.txt | cut -f 6 | awk '!NF {s+=1} END {print s}'  
# number of NMV2 proteins that aren't covered in NMV4
printf "NMV2, notNMV4\t"
grep NMV2 CoverageFiltered.txt | cut -f 7 | awk '!NF {s+=1} END {print s}' 

# number of NMV3 proteins that aren't covered in PARENT
printf "NMV3, notPARENT\t"
grep NMV3 CoverageFiltered.txt | cut -f 3 | awk '!NF {s+=1} END {print s}' 
# number of NMV3 proteins that aren't covered in MUC1
printf "NMV3, notMUC1\t"
grep NMV3 CoverageFiltered.txt | cut -f 2 | awk '!NF {s+=1} END {print s}' 
# number of NMV3 proteins that aren't covered in NMV1
printf "NMV3, notNMV1\t"
grep NMV3 CoverageFiltered.txt | cut -f 4 | awk '!NF {s+=1} END {print s}'
# number of NMV3 proteins that aren't covered in NMV2
printf "NMV3, notNMV2\t"
grep NMV3 CoverageFiltered.txt | cut -f 5 | awk '!NF {s+=1} END {print s}'  
# number of NMV3 proteins that aren't covered in NMV4
printf "NMV3, notNMV4\t"
grep NMV3 CoverageFiltered.txt | cut -f 7 | awk '!NF {s+=1} END {print s}' 

# number of NMV4 proteins that aren't covered in PARENT
printf "NMV4, notPARENT\t"
grep NMV4 CoverageFiltered.txt | cut -f 3 | awk '!NF {s+=1} END {print s}' 
# number of NMV4 proteins that aren't covered in MUC1
printf "NMV4, notMUC1\t"
grep NMV4 CoverageFiltered.txt | cut -f 2 | awk '!NF {s+=1} END {print s}' 
# number of NMV4 proteins that aren't covered in NMV1
printf "NMV4, notNMV1\t"
grep NMV4 CoverageFiltered.txt | cut -f 4 | awk '!NF {s+=1} END {print s}'
# number of NMV4 proteins that aren't covered in NMV2
printf "NMV4, notNMV2\t"
grep NMV4 CoverageFiltered.txt | cut -f 5 | awk '!NF {s+=1} END {print s}'  
# number of NMV4 proteins that aren't covered in NMV3
printf "NMV4, notNMV3\t"
grep NMV4 CoverageFiltered.txt | cut -f 6 | awk '!NF {s+=1} END {print s}' 


printf "PAR:\t"
grep PAR CoverageFiltered.txt | wc
printf "MUC1:\t"
grep MUC1 CoverageFiltered.txt | wc
printf "NMV1:\t"
grep NMV1 CoverageFiltered.txt | wc
printf "NMV2:\t"
grep NMV2 CoverageFiltered.txt | wc
printf "NMV3:\t"
grep NMV3 CoverageFiltered.txt | wc
printf "NMV4:\t"
grep NMV4 CoverageFiltered.txt | wc