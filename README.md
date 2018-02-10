# dind-azurecli
### Fork of Docker in Docker (petazzo/dind), with Azure-cli installed.

You MUST run this in privileged mode. JPetazzo explains why [in this blog post](https://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/).


``` docker run --privileged davevoyles/dind-azurecli ```

If you see all of this log info below, then you've stood up the outer Docker container.

![Docker Readme Two](https://www.dropbox.com/s/qpvpq13vd2foo8q/davevoyles-azure-cli-docker-hub-readme-2.png?raw=1)

### Access the internal docker container

Now open a **new terminal window** to access the *internal* docker container and test out the azure CLI with a simple ```az``` command: 

```docker exec -it <ID# of image> az -h ```


![Docker Readme One](https://www.dropbox.com/s/vjivlu6htl4x8ij/davevoyles-azure-cli-docker-hub-readme.png?raw=1)


### Resources
* [Auzre CLI docs](https://docs.microsoft.com/en-us/cli/azure/overview?view=azure-cli-latest)
* [Docker in Docker](https://github.com/jpetazzo/dind)
