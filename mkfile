## DESCRIPTION:
## mk module 1 for PoN creation. Mutect2 in tumor-only mode.

< config.mk

results/%.vcf.gz: data/%.recal.bam
	mkdir -p `dirname $target`
	java -jar $GATK \
		Mutect2 \
		-R $REF \
		-I $prereq \
		-tumor `echo $stem | cut -f1 -d"_"` \
		--disable-read-filter MateOnSameContigOrNoMappedMateReadFilter \
		-O "results/"$stem".build.vcf.gz" \
	&& mv "results/"$stem".build.vcf.gz" $target \
	&& mv "results/"$stem".build.vcf.gz.tbi" $target".tbi"
