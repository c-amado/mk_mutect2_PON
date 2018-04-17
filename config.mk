#PATH to executables. Should include java and other dependencies as directed by README.md of the pipeline.
PATH=/castle/cfresno/.bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin:/usr/lib/plan9/bin:/usr/bin/

#PATH to call GATK jar file
GATK="/home/adminserver/bin/gatk-4.0.3.0/gatk-package-4.0.3.0-local.jar" 


#Reference Genome dasta file
##REF="/reference/ftp.broadinstitute.org/bundle/hg38/Homo_sapiens_assembly38.fasta" ##For whole-genome
REF="/references/mitocondria/NCBI_NC_012920.1_Homo_sapiens_mitochondrion.fasta" ##For mitochondria

#Reference vcf files, as described in README.md
INDELs="/references/mitocondria/GATK_bundle_for_NC012920/indels_mitochondria.vcf"
dbSNP="/references/mitocondria/GATK_bundle_for_NC012920/SNVs_mitochondria_2.vcf"

#Number of threads for parallelization of GATK and compression by bgzip
NT="4"
