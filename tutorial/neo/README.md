# PyConEs Docker Tutorial

## Wake up, Neo |


One of the advantages of Docker is that we can run almost any program with just a command line:

    sudo docker run -d -p 7474:7474 tpires/neo4j

    sudo docker run -d -p 6379:6379 dockerfile/redis

    sudo docker run -d -p 27017:27017 dockerfile/mongodb

    sudo docker run -d -p 9200:9200 -p 9300:9300 ipedrazas/elasticsearch


You can access Neo4j in your [localhost](http://localhost:7474), if you have installed locally a redis client, you can check that indeed you have a redis server in your host, and the same goes for MongoDB. This image of ElasticSearch comes with Marvel, a plugin that provides a [dashboard](localhost:9200/_plugin/marvel/) and a query intereface.

If you don't have a redis or a mongodb client, you could always run a container... [#justsaying](https://twitter.com/search?q=%23justsaying)

**BUT** to do that, you should give your containers a name, so you can link to them...


    sudo docker run -d --name neo4j -p 7474:7474 tpires/neo4j

    sudo docker run -d --name redis2 -p 6379:6379 dockerfile/redis

    sudo docker run -d --name mongodb -p 27017:27017 dockerfile/mongodb

    sudo docker run -d --name es -p 9200:9200 -p 9300:9300 ipedrazas/elasticsearch


And now you create containers that link to those containers...

    docker run -it --rm --link mongodb:mongodb \
        dockerfile/mongodb bash -c 'mongo --host mongodb'

Once inside, we can create a database, define an object, insert it into mongodb, and query.

    use pycones;
    entry={name: "workshop", title: "50 Shades of Docker", author: "ipedrazas"}
    db.pycones.insert(entry);
    db.pycones.find();

The same would apply for redis, of course

    docker run -it --rm --link redis:redis dockerfile/redis bash -c 'redis-cli -h redis'

    set mykey "this is a very valuable key"
    set myotherkey "PyConEs rocks!"
    set 1234 "1234"

    keys *



[Go Back](../README.md)
