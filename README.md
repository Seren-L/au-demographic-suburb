# NSW suburben demographics analysis tool
This is my first R project. It was written for the marketing department I interned for to analyze the potential clients in each suburb, for compiling better product promotion strategies.

The tool is designed to be “plug and play” with minimal setup required to work with colleagues with minimal IT knowledge. 

## Overview

This tool uses 2021 Australian census data, and will not work on other datasets.

Start script: 

Windows (command line): `run.bat`

Windows (shell): `run.sh`

MacOS: Not tested (likely not supported)

Output: `Demographics.html`

## Setup
1. Download [the dataset](https://www.abs.gov.au/census/find-census-data/datapacks/download/2021_GCP_SAL_for_NSW_short-header.zip) from Australian Bureau of Statistics. Source: https://www.abs.gov.au/census/find-census-data/datapacks?release=2021&product=GCP&geography=SAL&header=S 
2. Extract and rename the folder `2021 Census GCP Suburbs and Localities for NSW` to `NSW`, remove the other folders
3. Download [R-Portable](https://sourceforge.net/projects/rportable/) and install it to this folder.
4. Download version 3.1.8 of [Pandoc](https://github.com/jgm/pandoc/releases/download/3.1.8/pandoc-3.1.8-windows-x86_64.zip) and extract files to this folder.
5. In the same folder now, there should be folders named: NSW, R-Portable and pandoc-3.1.8. In the same folder, download this project using the green Code button on the page, and select download ZIP. Extract and put the content of the folder in the same folder.
6. The project folder should now consist of the above folders, and some files which were contents of the downloaded project ZIP. 

## Usage

1.  Acquire all requirements as outlined in **Setup**.
2.  Double click to run the `run` script of your choice.
3.  In the webpage, write down name of the suburb you would like to access. Suburb names according to `SAL_2021_AUST.csv`.
4.  Result will show up as a webpage.
5.  To export, right click anywhere in the webpage and choose "save as...".

## Features
Population

Age Group Count

Gender

Country of Birth

Weekly Personal Income Count

Weekly Personal Income by Age

Occupation

Industry

## Acknowledgements

This tool uses [Pandoc](https://pandoc.org/), [R-Portable](https://portableapps.com/node/32898) and [R](https://www.r-project.org/). 

Special thanks to Lee Pang for writing [this](https://www.r-bloggers.com/2014/04/deploying-desktop-apps-with-r/) guide to how to deploy a R/Shiny app locally. 

This tools uses MIT license. 
