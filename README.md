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


