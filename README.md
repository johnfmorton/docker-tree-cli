# Docker Tree-CLI
This repo contains a Dockerfile for [Tree CLI](https://github.com/MrRaindrop/tree-cli). You can find a respository of this image on Docker Hub at [johnfmorton/tree-cli](https://hub.docker.com/r/johnfmorton/tree-cli).

## Description

This Dockerfile contains [Tree CLI](https://github.com/MrRaindrop/tree-cli) and defaults to using node 16 in the container. You can change the node version by altering the tag passed into the Dockerfile.

## Basic usage

The default command in the Dockerfile is `/usr/local/bin/tree`.  From the command line, navigate to the directory containing the files you want to see in a tree and run the image like this:

```
docker run --rm -it -v `pwd`:/app johnfmorton/tree-cli
```

This command passes in a reference to the directory from which you are issuing the command and will return a tree structure showing the files in the directory.

## Using an alias

To use this Dockerfile as intended, you should create an alias. Use the method descriped in [Dock Life: Using Docker for All The Things!](https://nystudio107.com/blog/dock-life-using-docker-for-all-the-things).

I've got an alias in my zsh configuration file, i.e. the .zshrc file, that allows me to use `tree` from my command line as if I had it installed on my local machine. Here is the alias.

```
alias tree='f(){ docker run --rm -it -v "$PWD":/app johnfmorton/tree-cli tree "$@";  unset -f f; }; f'
```

Now, even thought tree-cli has not been installed on your machine, you can run it from the command line as if it were installed. Here we pass in `-l 2` to tell tree to show 2 levels of files in the tree structure.

```
tree -l 2
```

That shows the following for this project's files.

```
/app
├── CHANGELOG.md
├── Dockerfile
├── LICENSE.md
├── NOTES.md
├── OVERVIEW-for-DockerHub.md
├── README.md
├── my-directory
|  ├── sample-file-2.md
|  └── sample-file.txt
├── social-image.png
├── social-image.psd
└── workspace.code-workspace

directory: 1 file: 11
```

### Why does is say app as the root?

Since this runs `tree-cli` within a container and not your actual filesystem, the root directory from within the container, `app`, is shown as your root directory name.

## Addition usage reproduced from the Github repo for Tree
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
tree -d
```
## Future possible additions

This containe works for what I wanted to accomplish. Ideally it would report the name of your root directory instead of "app". I am not sure of a solution to that at the moment. If you have an idea though, please let me know.
