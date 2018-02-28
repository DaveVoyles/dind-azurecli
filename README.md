# dind-azurecli
### Fork of Docker in Docker (petazzo/dind), with Azure-cli installed.

[Here is a 2 minute YouTube video with instructions on how to set this up.](https://youtu.be/ymnY2vQEiqU)

You MUST run this in privileged mode. JPetazzo explains why [in this blog post](https://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/).


``` docker run -it --privileged -u root -v /var/run/docker.sock:/var/run/docker.sock davevoyles/dind-azurecli sh ```

This will give you a shell inside of the container.

If you see all of this log info below, then you've stood up the outer Docker container.

![Docker Readme Two](https://www.dropbox.com/s/qpvpq13vd2foo8q/davevoyles-azure-cli-docker-hub-readme-2.png?raw=1)

### Access the internal docker container

Now open a **new terminal window** to access the *internal* docker container.

Run ```Docker ps``` to list out the currently running docker images. Copy the ID# of the image we just ran. Test out the azure CLI with a simple ```az``` command: 

```docker exec -it <ID# of image> az -h ```

Now you have access to the Azure CLI from within the internal docker container!

![Docker Readme One](https://www.dropbox.com/s/vjivlu6htl4x8ij/davevoyles-azure-cli-docker-hub-readme.png?raw=1)


### Resources
* [Auzre CLI docs](https://docs.microsoft.com/en-us/cli/azure/overview?view=azure-cli-latest)
* [Docker in Docker](https://github.com/jpetazzo/dind)
