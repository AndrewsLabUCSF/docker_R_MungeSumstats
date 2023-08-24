FROM neurogenomicslab/mungesumstats:1.7.10

RUN R --vanilla -e 'BiocManager::install("SNPlocs.Hsapiens.dbSNP144.GRCh38")'
RUN R --vanilla -e 'BiocManager::install("BSgenome.Hsapiens.NCBI.GRCh38")'
RUN R --vanilla -e 'BiocManager::install("SNPlocs.Hsapiens.dbSNP144.GRCh37")'
RUN R --vanilla -e 'BiocManager::install("BSgenome.Hsapiens.1000genomes.hs37d5")'
