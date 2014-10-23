# PyConEs Docker Tutorial

## Hello World

    docker run -it --rm ubuntu echo Hello World

This command, as expected, just prints a `Hello World`, this other instead...

    docker run -d ubuntu /bin/sh -c "while true; do echo hello world; sleep 2; done")

does the same every 2 seconds



[Go Back](../README.md)