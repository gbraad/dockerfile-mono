Mono
====

!["Prompt"](https://raw.githubusercontent.com/gbraad/assets/gh-pages/icons/prompt-icon-64.png)


Docker container containing Mono and PowerShell

## Registries

### GitLab

Available as an automated builds at the GitLab [container registry](https://gitlab.com/gbraad/mono/container_registry).

  * CentOS 7:  
    `docker pull registry.gitlab.com/gbraad/mono:c7`
  * Fedora 24:  
    `docker pull registry.gitlab.com/gbraad/mono:f24`


### Docker hub

Available as an automated build from the [Docker registry](https://hub.docker.com/r/gbraad/mono/).

  * CentOS 7:  
    `docker pull gbraad/mono:c7`
  * Fedora 24:  
    `docker pull gbraad/mono:f24`


Usage
-----


### Setup an alias

Setup a local alias makes running the container a lot easier


#### Container based on _CentOS_

```
$ alias posh='docker run -it --rm -v $PWD:/workspace registry.gitlab.com/gbraad/mono:c7'
```


### Issue command

```
$ posh
PowerShell 
Copyright (C) 2016 Microsoft Corporation. All rights reserved.

PS /workspace> 
```

Note: the current directory will be available as `/workspace`.


Authors
-------

| [!["Gerard Braad"](http://gravatar.com/avatar/e466994eea3c2a1672564e45aca844d0.png?s=60)](http://gbraad.nl "Gerard Braad <me@gbraad.nl>") |
|---|
| [@gbraad](https://twitter.com/gbraad)  |
