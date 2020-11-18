# Docker Jupyter Notebook with Geospatial Libraries
A docker container that contains conda, python=3.6, and the following libraries:
- geopandas
- fiona
- shapely
- rasterstats
- rasterio
- jupyter
- spyder

To build:
```
docker build .
```
Then to run jupyter, take the docker image hash from above and:
```
docker run -it --rm -p 8888:8888 $DOCKER_IMAGE
```
One has been built and published to docker hub as `aaryno/docker-jupyter-geo` and can also be run as:
```
docker run -it --rm -p 8888:8888 --entrypoint python aaryno/docker-jupyter-geo
```
To use a local volume for saving notebooks or loading data:
```
docker run -it --rm -p 8888:8888 -v "$PWD":/home/jovyan/work aaryno/docker-jupyter-geo
```
## To run other programs in the python conda geo environment:
### Spyder
```
docker run -it --rm --entrypoint spyder aaryno/docker-jupyter-geo
```
### Interactive Python repl:
```
docker run -it --rm --entrypoint python aaryno/docker-jupyter-geo
```
