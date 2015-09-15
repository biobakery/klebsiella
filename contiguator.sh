#! /usr/bin/sh

# run Contiguator on data

#note: chmod +x to CONTIGuator.py and add this line to ~/.bash_profile:
# export PATH=/path/to/CONTIGuator_v2.7.4/:$PATH

CONTIGuator.py -r data/WGLW5-fix.fa -c data/NVM1/nmv1.hicoverage_scaffolds.fasta 1 -f NMV1 -L 5000
CONTIGuator.py -r data/WGLW5-fix.fa -c data/NVM2/nmv2.hicoverage_scaffolds.fasta 1 -f NMV2 -L 5000
CONTIGuator.py -r data/WGLW5-fix.fa -c data/NVM3/nmv3.hicoverage_scaffolds.fasta 1 -f NMV3 -L 5000
CONTIGuator.py -r data/WGLW5-fix.fa -c data/NVM4/nmv4.hicoverage_scaffolds.fasta 1 -f NMV4 -L 5000
CONTIGuator.py -r data/WGLW5-fix.fa -c data/MUC1_V1/scaffolds.fa 1 -f MUC1 -L 5000
CONTIGuator.py -r data/WGLW5-fix.fa -c data/Parent/parent.hicoverage_scaffolds.fasta 1 -f Parent -L 5000
