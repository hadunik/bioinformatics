fastqc SRR24502286.fastq
minimap2 -d ref.mmi GCF_000005845.2_ASM584v2_genomic.fna
minimap2 -a ref.mmi SRR24502286.fastq > alignment.sam
samtools flagstat alignment.sam > flagstat.txt
./script.sh flagstat.txt
samtools view -bS -o alignment.bam alignment.sam
samtools sort -o aligment_sorted.bam alignment.bam
freebayes -f GCF_000005845.2_ASM584v2_genomic.fna aligment_sorted.bam > output.vcf