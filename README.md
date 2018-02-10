# dind-azurecli
### Fork of Docker in Docker (petazzo/dind), with Azure-cli installed.

You MUST run this in privileged mode. JPetazzo explains why [in this blog post](https://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/).


``` docker run --privileged dind-azurecli ```

Test out the azure CLI with a simple ```az``` command: 

```docker exec -it <name of image> az -h ```


![https://www.dropbox.com/s/vjivlu6htl4x8ij/davevoyles-azure-cli-docker-hub-readme.png?raw=1](https://www.dropbox.com/s/vjivlu6htl4x8ij/davevoyles-azure-cli-docker-hub-readme.png?raw=1)


### Resources
* [Auzre CLI docs](https://docs.microsoft.com/en-us/cli/azure/overview?view=azure-cli-latest)
* [Docker in Docker](https://github.com/jpetazzo/dind)
