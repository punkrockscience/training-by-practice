## obtain the BED file of human coding genes (to read more about BED format: https://genome.ucsc.edu/FAQ/FAQformat#format1)
# 1) download the file from Ulitsky lab website (http://www.weizmann.ac.il/Biological_Regulation/IgorUlitsky/pipeline-lncrna-annotation-rna-seq-data-plar)
wget ftp://ftp-igor.weizmann.ac.il/pub/CLAP/data/hg19.coding.bed.gz
# 2) uncompress the gz file
gunzip hg19.coding.bed.gz 
# 3) creat a smaller BED file for chromosomes 17,18,and 19
grep "^chr1[7-9]" hg19.coding.bed > hg19.coding_subset.bed
# 4) delete the big BED file
rm hg19.coding.bed


## Task1: Print few lines of the file hg19.coding.bed to the screen to check the format of the file


## Task2: sort the bed file by exon no in ascending order. Name the new file "hg19.coding_subset.sorted.bed" 


## Task3: extract transcripts with 3 exons from the sorted file from task2. Name the new file "hg19.coding_subset.3exon.sorted.bed" 


## Task4: extract transcripts with 3 exons and chr17 from the sorted file from task2. Name the new file "hg19.coding_subset.3exon.chr17.sorted.bed" 


## Task5: starting with the original input file, make a new column that has the length of transcript in the genome. For examle if it starts at 1 and ends at 500 then its length would be 499. Save the new file under the name "hg19.coding_subset.length.bed"


## Task6: starting with the original input file, we need to edit column 1 to remove the "chr" prefix in the chromosome name. For example, we will change chr17 to 17. Save the new file under the name "hg19.coding_subset.ensFormat.bed"


## Task7: We need to collect transcripts that are labeled as "EnsCodingFull" in column 4. Save the new file under the name "hg19.coding_subset.EnsCodingFull.bed"


## Task8: compare the 2 files: hg19.coding_subset.bed and hg19.coding_subset.EnsCodingFull.bed to see which lines have removed.


## Task9: Cut the last 2 lines from the file "hg19.coding_subset.bed". Save in "hg19.coding_subset.truncated.bed"


## Task10: Count how many transcripts have 5 exons


## Task11: check how many lines do you have in all the bed files in your folder


## Task12: find isoforms of that have the same start co-ordinates in hg19.coding_subset.bed


## Task13: make a for loop to go through all bed files in the folder. For each bed file, count the no of transcripts on the negative strand. Save file names and corresponding counts in a single output file. Name the output file trans_negative.count


## Task14: starting with the original input file, make a new column that has the length of coding sequence of each transcript. For example, a transcript that has 3 exons and their lengthes are 100,150,and 200, its length will be 100+150+200=450 bp. Save the new file under the name "hg19.coding_subset.coding_length.bed". Notice the difference from task no 5


