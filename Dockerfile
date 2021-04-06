FROM jupyter/scipy-notebook:4d9c9bd9ced0

USER root

RUN apt-get update -y && apt-get install -y apt-transport-https ca-certificates libwebp-dev libopenjp2-7-dev libtiff5

RUN    apt-get -y install python3-numpy \
                          python3-scipy \
                          python3-matplotlib \
                          ipython3 \
                          python3-pandas \
                          python3-sympy \
                          python3-nose

RUN    apt-get -y install libjs-jquery \
                          libjs-mathjax \
                          gitk \
                          python3-pep8 \
                          pyflakes \
                          pylint \
                          python3-jedi \
                          python3-psutil \
                          python3-sphinx

RUN apt-get install -y pyqt5-dev \
				libpyside2-dev \
				libpyside2-py3-5.14 \
				pyqt5-dev-tools \
				pyqt5-examples \
				pyqt5.qsci-dev \
				pyqt5chart-dev \
				python-pyqt5.qwt-doc \
				python-pyqtgraph-doc \
				python3-dbus.mainloop.pyqt5 \
				python3-dbus.mainloop.pyqt5-dbg \
				python3-pyqt5 \
				python3-pyqt5-dbg \
				python3-pyqt5.qsci \
				python3-pyqt5.qtchart \
				python3-pyqt5.qtchart-dbg \
				python3-pyqt5.qtmultimedia \
				python3-pyqt5.qtmultimedia-dbg \
				python3-pyqt5.qtopengl \
				python3-pyqt5.qtopengl-dbg \
				python3-pyqt5.qtpositioning \
				python3-pyqt5.qtpositioning-dbg \
				python3-pyqt5.qtquick \
				python3-pyqt5.qtquick-dbg \
				python3-pyqt5.qtsensors \
				python3-pyqt5.qtsensors-dbg \
				python3-pyqt5.qtserialport \
				python3-pyqt5.qtserialport-dbg \
				python3-pyqt5.qtsql \
				python3-pyqt5.qtsql-dbg \
				python3-pyqt5.qtsvg \
				python3-pyqt5.qtsvg-dbg \
				python3-pyqt5.qtwebchannel \
				python3-pyqt5.qtwebchannel-dbg \
				python3-pyqt5.qtwebengine \
				python3-pyqt5.qtwebengine-dbg \
				python3-pyqt5.qtwebkit \
				python3-pyqt5.qtwebkit-dbg \
				python3-pyqt5.qtwebsockets \
				python3-pyqt5.qtwebsockets-dbg \
				python3-pyqt5.qtx11extras \
				python3-pyqt5.qtx11extras-dbg \
				python3-pyqt5.qtxmlpatterns \
				python3-pyqt5.qtxmlpatterns-dbg \
				python3-pyqt5.qwt \
				python3-pyqtgraph \
				python3-qt5reactor \
				python3-qtawesome \
				python3-qtpy \
				python3-taurus-pyqtgraph \
				pyside2-tools \
				python-pyside2-doc \
				python3-pyside2.qt3dcore \
				python3-pyside2.qt3dinput \
				python3-pyside2.qt3dlogic \
				python3-pyside2.qt3drender \
				python3-pyside2.qtcharts \
				python3-pyside2.qtconcurrent \
				python3-pyside2.qtcore \
				python3-pyside2.qtdatavisualization \
				python3-pyside2.qtgui \
				python3-pyside2.qthelp \
				python3-pyside2.qtlocation \
				python3-pyside2.qtmultimedia \
				python3-pyside2.qtmultimediawidgets \
				python3-pyside2.qtnetwork \
				python3-pyside2.qtopengl \
				python3-pyside2.qtopenglfunctions \
				python3-pyside2.qtpositioning \
				python3-pyside2.qtprintsupport \
				python3-pyside2.qtqml \
				python3-pyside2.qtquick \
				python3-pyside2.qtquickwidgets \
				python3-pyside2.qtscript \
				python3-pyside2.qtscripttools \
				python3-pyside2.qtscxml \
				python3-pyside2.qtsensors \
				python3-pyside2.qtsql \
				python3-pyside2.qtsvg \
				python3-pyside2.qttest \
				python3-pyside2.qttexttospeech \
				python3-pyside2.qtuitools \
				python3-pyside2.qtwebchannel \
				python3-pyside2.qtwebengine \
				python3-pyside2.qtwebenginecore \
				python3-pyside2.qtwebenginewidgets \
				python3-pyside2.qtwebsockets \
				python3-pyside2.qtwidgets \
				python3-pyside2.qtx11extras \
				python3-pyside2.qtxml \
				python3-pyside2.qtxmlpatterns

RUN apt-get -y install gfortran

# d65be59a25bd

RUN conda config --add channels conda-forge

# 6023b05978ea

RUN conda config --set channel_priority strict

RUN conda install python=3 geopandas matplotlib shapely descartes fiona pyproj rasterstats rasterio libwebp-base libwebp spyder

RUN conda install pyqt5

EXPOSE 8888

USER jovyan

CMD ["start-notebook.sh","--ip=0.0.0.0","--allow-root"]
