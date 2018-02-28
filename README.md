# dind-azurecli
### Fork of Docker in Docker (petazzo/dind), with Azure-cli installed.

[Here is a 2 minute YouTube video with instructions on how to set this up.](https://youtu.be/ymnY2vQEiqU)

You MUST run this in privileged mode. JPetazzo explains why [in this blog post](https://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/).


``` docker run -it --privileged -u root -v /var/run/docker.sock:/var/run/docker.sock davevoyles/dind-azurecli sh ```

 The ```-v /var/run/docker.sock:/var/run/docker.sock``` command mounts the socket of the EXTERNAL container to that of the INTERNAL container, so that you now have a shell inside of the container to run commands.

If you see all of this log info below, then you've stood up the outer Docker container.

![Docker Readme Two](https://www.dropbox.com/s/qpvpq13vd2foo8q/davevoyles-azure-cli-docker-hub-readme-2.png?raw=1)

### Access the internal docker container

Now open a **new terminal window** to access the *internal* docker container.

Run ```Docker ps``` to list out the currently running docker images. Copy the ID# of the image we just ran. Test out the azure CLI with a simple ```az``` command: 

```docker exec -it <ID# of image> az -h ```

Now you have access to the Azure CLI from within the internal docker container!

![Docker Readme One](https://www.dropbox.com/s/vjivlu6htl4x8ij/davevoyles-azure-cli-docker-hub-readme.png?raw=1)

### Using the Azure CLI to build containers

As an example, you can run the following command to:

1. Build the react-boilerplate image from the *code4clouds* [Azure Container Registry](https://azure.microsoft.com/en-us/services/container-registry/)
2. Log into an Azure Service Principal. [You can read more about those here.](https://docs.microsoft.com/en-us/cli/azure/create-an-azure-service-principal-azure-cli?view=azure-cli-latest)
3. Push that image to the Azure Container Registry

```
docker build --tag registryXYZ.azurecr.io/code4clouds/react-boilerplate:1.0 .
az login --service-principal --username $ACRUSERNAME --password $ACRPASSWORD --tenant $ACRTENANT --allow-no-subscription
az acr login --name registryXYZ
docker push registryXYZ.azurecr.io/code4clouds/react-boilerplate:1.0'
```

Obviously you'd swap the user name, password, tenant and repository to match that of your own.  

### Resources
* [Auzre CLI docs](https://docs.microsoft.com/en-us/cli/azure/overview?view=azure-cli-latest)
* [Docker in Docker](https://github.com/jpetazzo/dind)
