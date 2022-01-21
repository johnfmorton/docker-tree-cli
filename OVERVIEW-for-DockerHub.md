# johnfmorton/tree-cli

This image contains an installation of [Tree CLI]((https://github.com/MrRaindrop/tree-cli).

## Basic use

The default command in the Dockerfile is `/usr/local/bin/tree`.

From the command line, navigate to the directory containing the images you want to compress. Then run the following command.

```
docker run --rm -it -v `pwd`:/app johnfmorton/tree-cli
```

Or, to pass in flags and options, you'd call `tree` and pass in options:

```
docker run --rm -it -v `pwd`:/app johnfmorton/tree-cli tree -l 2
```

Refer to the [documentation](https://github.com/MrRaindrop/tree-cli) for an exhaustive list of options for Tree CLI.

## More information

See the GitHub repo for additional documentation on using this Dockerfile: https://github.com/johnfmorton/docker-tree-cli

Where to file issues: https://github.com/johnfmorton/docker-tree-cli/issues
