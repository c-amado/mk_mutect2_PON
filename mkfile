## DESCRIPTION:
## mk module 1 for PoN creation. Mutect2 in tumor-only mode.

< config.mk

results/%.vcf.gz: data/%.recal2.bam
	mkdir -p `dirname $target`
	java -jar $GATK \
		Mutect2 \
		-R $REF \
		-I $prereq \
		-tumor `echo $stem | cut -f1 -d"_"` \
		--disable-read-filter MateOnSameContigOrNoMappedMateReadFilter \
		-O $target".build" \
	&& mv $target".build" $target \
	&& mv $target".build.idx" $target".ix"
