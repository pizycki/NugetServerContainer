FROM microsoft/aspnet
MAINTAINER pizycki

EXPOSE 8000

ADD NugetServer /NugetServer

RUN powershell -NoProfile -Command \
    Import-Module IISAdministration; \
    New-IISSite -Name "NugetServer" -PhysicalPath C:\NugetServer -BindingInformation "*:8000:"