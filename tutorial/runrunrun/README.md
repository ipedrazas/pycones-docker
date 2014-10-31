
# PyConEs Docker Tutorial

## Run Run Run

Have you ever been in that situation where you just want to run something? Do you remember Google Reader? me too, painful!

Did you try to run locally something to replace it (and failed?)


Run these two lines and you will have a working Tiny Tiny RSS

    docker run -d --name ttrssdb nornagon/postgres
    docker run -d --link ttrssdb:db -p 80:80 clue/ttrss


**Docker helps users to run applications locally by removing two critical steps: Installation and configuration**



[TTRSS Source](https://github.com/clue/docker-ttrss)

