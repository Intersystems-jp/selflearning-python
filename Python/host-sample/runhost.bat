@echo off
call host-params.bat

echo -----------------------
echo  ** Native API Test **
echo -----------------------

python HelloWorldNativeAPI.py

echo -----------------------
echo  ** PyODBC Test **
echo -----------------------

python HelloWorldPyODBC.py

echo -----------------------
echo  ** Sake.py test **
echo -----------------------

python Sake.py
