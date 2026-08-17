conda create -n ggforestplot-build -c conda-forge python=3.11 conda-build conda-verify anaconda-client
conda activate ggforestplot-build

#adapt channels below if needed
cd ggforestplot
conda-build conda/recipe -c conda-forge --output-folder /tmp/samuele/conda-build

anaconda login



anaconda upload -u hds.sandbox /tmp/samuele/conda-build/*/r-ggforestplot-*.tar.bz2