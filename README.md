# covhist
historical risklayer data = download 'Haupt' sheets into CSV files

## (1) install dependencies in a virtualenv

    python3 -m venv ./py3data; source ./py3data/bin/activate  
    pip3 install -U pip wheel; pip3 install -U wget requests beautifulsoup4 numpy pandas
    
## (2) examine / add to the spreadsheet

links are in this googlesheet: 

* [1rn_nPJodxAwahIzqfRtEr9HHoqjvmh_7bj6-LUXDRSY](https://docs.google.com/spreadsheets/d/1rn_nPJodxAwahIzqfRtEr9HHoqjvmh_7bj6-LUXDRSY)
  * in the sheet 'ThePast'
  
## (3) run the download script, and examine the output

    scripts/historicalData.sh 
    ls -l {data,logs}

If you do not want to run it, study the [logs/example.log](logs/example.log).

## (4) TODO: process the CSVs

As over time, some columns got renamed, the next step then is, to read in those 102 CSV files, and create a mapping table 

    (date) --> (source-column --> universal column)
    
You can already have a look at three example CSVs in this repo: [18/03](data/GermanyKreisebene_Risklayer_haupt-20200318_215000.csv) and [24/04](data/GermanyKreisebene_Risklayer_haupt-20200424_190000.csv) and [24/06](data/GermanyKreisebene_Risklayer_haupt-20200624_210000.csv). I suggest you open them with [LibreOffice Calc](https://www.libreoffice.org/discover/calc/), the import settings are "separated by: Comma".

----
## Attribution

### data
All data was generated by risklayer.com, this is their message:

> Data can be used for reproduction with attribution to "Risklayer GmbH (www.risklayer.com) and Center for Disaster Management and Risk Reduction Technology (CEDIM) at Karlsruhe Institute of Technology (KIT) and the Risklayer-CEDIM SARS-CoV-2 Crowdsourcing Contributors".  
> Data sources can be found under https://docs.google.com/spreadsheets/d/1wg-s4_Lz2Stil6spQEYFdZaBEp8nWW26gVyfHqvcl8s/edit?usp=sharing  
> Authors: James Daniell| Johannes Brand| Andreas Schaefer and the Risklayer-CEDIM SARS-CoV-2 Crowdsourcing Contributors through Risklayer GmbH and Center for Disaster Management and Risk Reduction Technology (CEDIM) at the Karlsruhe Institute of Technology (KIT).   


    
### code

This project: `covhist` is a spin-out of `covviz` which generates the website `cov19de`. **Improve:** Please submit [issues](https://github.com/covh/covhist/issues) and fork, and do [pull requests](https://github.com/covh/covhist/pulls). Thanks. **Spread the word:** [tiny.cc/cov19de](http://tiny.cc/cov19de) is the main project, please explore it, read the **about.html**, etc - and tweet about [#cov19de](https://twitter.com/hashtag/cov19de?f=live). Thanks a lot.
 


