#!/bin/bash
source ./host-params.sh
echo "----------------------"
echo "** Native APIのテスト **"
echo "----------------------"
python3 HelloWorldNativeAPI.py

echo "----------------------"
echo "** pyODBCのテスト **"
echo "----------------------"
python3 HelloWorldPyODBC.py

echo "----------------------"
echo "** Sake.py 実行 **"
echo "----------------------"
python3 Sake.py