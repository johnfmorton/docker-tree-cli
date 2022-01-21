# Docker Tree-CLI
This repo contains a Dockerfile for [Tree CLI](https://github.com/MrRaindrop/tree-cli). You can find a respository of this image on Docker Hub at [johnfmorton/tree-cli](https://hub.docker.com/r/johnfmorton/tree-cli).

## Description

This Dockerfile contains [Tree CLI](https://github.com/MrRaindrop/tree-cli) and defaults to using node 16. You can change the node version by altering the tag passed into the Dockerfile.

## Basic usage

From the command line, navigate to the directory containing the images you want to compress. Then run the following command.

```
docker run --rm -it -v `pwd`:/app johnfmorton/tree
```

The default command in the Dockerfile is `/bin/sh`, so you will be presented with a command prompt from within the container. You can now execute a squoosh-cli command.  For example:

```
tree
```

## Addition usage from the Github repo for Tree

### use --help to list help info.

```
tree --help
```

### specify the level of path (how deep to scan).

use `-l levelNumber` to specify the path level.

```
tree -l 2
```

### output result to a file

use `-o outputFilePath` to specify the output file.

```
tree -l 2 -o out.txt
```

### show directory only

use `-d` to show directories only.

```
tree -l
```

## Using an alias

If you don't want to type that long docker command, use the method descriped in [Dock Life: Using Docker for All The Things!](https://nystudio107.com/blog/dock-life-using-docker-for-all-the-things).

I've got an alias in my zsh configuration file, i.e. the .zshrc file, that allows me to use `tree-cli` from my command line as if I had it installed on my local machine.

```
alias tree='docker run --rm -it -v `pwd`:/app johnfmorton/tree-cli tree'
```

## Windows users

I don't have a windows machine to test on, but I think you'll need to update the alias to use `"${CURDIR}"` as shown here.

```
alias squoosh-cli='docker run --rm -it -v "${CURDIR}":/app johnfmorton/tree-cli tree'
```

## Future possible additions

There's not anything on my radar to add to this project. If you've got an idea, please get in touch.
