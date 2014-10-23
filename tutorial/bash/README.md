# PyConEs Docker Tutorial

## bash

    docker run -it --rm ubuntu bash


This instruction gives you a bash. In the good old days they used to show that if you do this:

    rm -rf /

The world does not end... If I were you, I wouldn't run that unless I'm inside a container. If you cannot contain your destructive self, try a as-destructive command:

    rm -rf /bin

Exit and check that your bin directory is as it was before... If you really deleted your /bin directroy you wil not be able to do a simple ls

It is safe to play bash inside a container... in fact, it doesn't really matter what do you do inside of a container, your host is safe.