# What is rhc

Rhc is a little binary really usefull when you work with openshift. You can find more information [here](https://developers.openshift.com/en/managing-common-rhc-commands.html)

# Why rhc-install container

Unfortunately, it is difficult to install a fully functionnal rhc on windows.

# How to you use this image

```bash
docker create -v /root/.openshift -v /root/.ssh --name rhc-data debian:jessie /bin/true  # Just for the first run. To create the container who store configuration.
docker run --rm -it --volumes-from rhc-data ecarre/rhc-install bash
```

You should want store more data like git to update your local git of your application. In this case, you should create an data container.  