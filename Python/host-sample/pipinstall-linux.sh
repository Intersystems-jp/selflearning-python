#!/bin/bash

# pyODBC用インストール
#sudo apt-get install unixodbc-dev

#----pip install pyodbc が失敗する場合-------
#　Pythonのバージョンに合わせて以下実行して下さい（例はPython3.8）
#sudo apt-get install python3.8-dev
#-------------------------------------------

sudo wget -P /usr/local/etc https://github.com/Intersystems-jp/IRISModules/raw/master/python/wheel/linux/libirisodbcur6435.so
sudo odbcinst -i -d -f irisodbcinst-host.ini
sudo odbcinst -i -s -l -f irisodbcinst-host.ini
sudo ln -s /usr/lib/x86_64-linux-gnu/liblber-2.4.so.2 /usr/local/etc/liblber-2.4.so.2
sudo ln -s /usr/lib/x86_64-linux-gnu/libldap-2.4.so.2 /usr/local/etc/libldap-2.4.so.2 
pip3 install pyodbc


# サンプルで使うライブラリのインポート
pip3 install matplotlib
pip3 install pandas

rm -rf irislib/*.whl
# NativeAPI用whlファイルのGET（Linux用）
wget -P irislib https://github.com/Intersystems-jp/IRISModules/raw/master/python/wheel/intersystems_irispython-3.2.0-py3-none-any.whl
pip3 install irislib/intersystems_irispython-3.2.0-py3-none-any.whl
