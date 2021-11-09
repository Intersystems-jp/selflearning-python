FROM containers.intersystems.com/intersystems/iris-community:2021.1.0.215.3 as IRIS
#FROM jupyter/minimal-notebook:python-3.8.8
FROM cjadeveloper/jupyter-minimal

LABEL maintainer="intersystems japan developer community"
USER root

WORKDIR /irislib
COPY requirements.txt .
COPY irisodbcinst.ini .

# whlをインストール
COPY --from=IRIS /usr/irissys/dev/python/ /irislib/
#COPY --from=IRIS /usr/irissys/bin/libl*-2.4.so.2 /irislib/
COPY --from=IRIS /usr/irissys/bin/libirisodbcur6435.so /irislib/libirisodbcur6435.so

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt && \
    pip install intersystems_irispython-3.2.0-py3-none-any.whl

# IRISのODBCインストール
RUN odbcinst -i -d -f irisodbcinst.ini && \
    odbcinst -i -s -l -f irisodbcinst.ini && \
    ln -s /usr/lib/x86_64-linux-gnu/liblber-2.4.so.2 /irislib/liblber-2.4.so.2 && \
    ln -s /usr/lib/x86_64-linux-gnu/libldap-2.4.so.2 /irislib/libldap-2.4.so.2 


CMD /bin/bash -c "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/ISC --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token=''"