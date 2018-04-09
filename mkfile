## DESCRIPTION:
## mk module 1 for PoN creation. Mutect2 un tumo-only mode.

< config.mk

results/%.vcf.gz: data/%.bam
	mkdir -p `dirname $target`
	java -jar $GATK \
		Mutect2 \
		-R $REF \
		-I $prereq \
		-tumor $stem \
		--disable-read-filter MateOnSameContigOrNoMappedMateReadFilter \
		-O $target".build" \
	&& mv $target".build" $target \
