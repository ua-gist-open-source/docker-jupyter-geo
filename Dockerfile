FROM jupyter/scipy-notebook:2c80cf3537ca

USER ROOT

RUN apt-get update -y && apt-get install -y apt-transport-https ca-certificates
RUN apt-get install -y libwebp-dev
RUN apt-get install -y libopenjp2-7-dev
RUN apt-get install -y libtiff5

RUN conda install -y -c ioos fiona
RUN conda install -y pandas matplotlib
RUN conda install -y -c ioos shapely pyproj
RUN conda install -y -c ioos geopandas descartes --no-deps
RUN conda install -y -c ioos rasterstats
RUN conda install -y -c ioos rasterio

RUN conda install -y libwebp-base libwebp --force
RUN conda install -y spyder

EXPOSE 8888
CMD ["jupyter","notebook","--port=8888","--ip=0.0.0.0","--allow-root","--no-browser"]
