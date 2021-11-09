@echo off
rm -rf irislib

bitsadmin /transfer myDownloadJob /download /priority normal https://github.com/Intersystems-jp/IRISModules/raw/master/python/wheel/intersystems_irispython-3.2.0-py3-none-any.whl %CD%/irislib/intersystems_irispython-3.2.0-py3-none-any.whl
pip install irislib/intersystems_irispython-3.2.0-py3-none-any.whl

pip install matplotlib
pip install pandas
pip install pyodbc
