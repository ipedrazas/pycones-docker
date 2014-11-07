# PyConEs Docker Tutorial

## Hello World

    docker run -it --rm ubuntu echo Hello World

This command, as expected, just prints a `Hello World`, this other instead...

    docker run -d ubuntu /bin/sh -c "while true; do echo hello world; sleep 2; done"

does the same every 2 seconds


### Docker Options

* -it: runs the container in foreground
* -d: daemon, you run the container as a service

Other useful commands to know what's going on:

### Docker Commands

* docker logs
* docker logs -ft [container_id]: -f is to get logs as we do with `tail -f`, the `t` option is to add timestamps to those logs
* docker top
* docker 



[Go Back](../README.md)