FROM neurogenomicslab/mungesumstats:1.7.10

RUN R --vanilla -e 'BiocManager::install("SNPlocs.Hsapiens.dbSNP144.GRCh38")'
RUN R --vanilla -e 'BiocManager::install("BSgenome.Hsapiens.NCBI.GRCh38")'
RUN R --vanilla -e 'BiocManager::install("SNPlocs.Hsapiens.dbSNP144.GRCh37")'
RUN R --vanilla -e 'BiocManager::install("BSgenome.Hsapiens.1000genomes.hs37d5")'

RUN R --vanilla -e 'BiocManager::install("SNPlocs.Hsapiens.dbSNP155.GRCh38")'
RUN R --vanilla -e 'BiocManager::install("SNPlocs.Hsapiens.dbSNP155.GRCh37")'
RUN R --vanilla -e 'install.packages("remotes", repos="http://cran.rstudio.com/")'
RUN R --vanilla -e 'remotes::install_github("jean997/GWASBrewer")'
RUN R --vanilla -e 'install.packages("janitor", repos="http://cran.rstudio.com/")'
RUN R --vanilla -e 'library(GWASBrewer); library(janitor); print("GWASBrewer & Janitor installed successfully")'
RUN R --vanilla -e 'install.packages("readr", repos="http://cran.rstudio.com/")'
