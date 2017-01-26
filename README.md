# Nuget Server in Windows Container
_[Official .NET Nuget Server](http://nugetserver.net/) in container._
_Based on [microsoft/aspnet](https://hub.docker.com/r/microsoft/aspnet/)._

## Links
[DockerHub](https://hub.docker.com/r/pizycki/nugetserver/)
[GitHub](https://github.com/pizycki/NugetServerContainer/)

## Version
NuGet.Server: `v2.11.3.0`
.NET: `4.6`

## How to run

### Setup your Windows Server 2016 or Windows 10\*  machine
I've created virtual machine on Azure with pre-installed Containers. 
[Click here to create your own VM (require Azure account)](https://azure.microsoft.com/pl-pl/marketplace/partners/microsoft/windowsserver2016datacenterwithcontainers/)


\* - To run Windows Containers you need at least Pro edition with Hyper-V feature.


**THIS IS WINDOWS BASED CONTAINER IMAGE AND WILL RUN NOT RUN ON ANY OTHER SYSTEM**



### Get your container image
You can **pull it from dockerhub** or **clone whole repository** and build it on your own. Completely up to you.

The image contains [Official Nuget Server](http://nugetserver.net/) downloaded via [nuget](https://www.nuget.org/packages/NuGet.Server).

### Run your container
Once container image is in your repository, you can spin it up
```
docker run -p 8000:8000 pizycki/nugetserver
```

You can replace `web.config` with your own. Use `-v` for mapping file with file inside container.
Sample `web.config` can be found [here](https://github.com/NuGet/NuGet.Server/blob/master/src/NuGet.Server/Web.config).
