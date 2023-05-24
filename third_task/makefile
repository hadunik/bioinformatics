#$(VERBOSE).SILENT:

SEQ_RES ?= genome_assemblies_genome_fasta.tar
GEN ?= SRR24502286.fastq.gz


all: run_script run_samtools
	freebayes -f *.fna alignment_sorted.bam > output.vcf

unzip_seq_res:
	tar -xf $(SEQ_RES)
	rm $(SEQ_RES)
	bash -c "cd ncbi-genom*; gunzip *.fna.gz; mv *.fna ../"

unzip_gen:
	gunzip $(GEN)
	fastqc -t 10 *.fastq

index_genome: unzip_gen unzip_seq_res
	minimap2 -t 10 -d ref.mni *.fna
	minimap2 -t 10 -a ref.mni *.fastq > alignment.sam

run_script:index_genome
	samtools flagstat alignment.sam > flagstat.txt
	./script.sh flagstat.txt

run_samtools:index_genome
	samtools view -bS -o alignment.bam alignment.sam
	samtools sort -o alignment_sorted.bam alignment.bam
