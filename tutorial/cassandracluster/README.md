# PyConEs Docker Tutorial

## Cassandra Cluster

To run a cassandra cluster we will need several containers. To allow containers to see each other, we will use links.

	
	#! /bin/bash

	docker run -d --name c1 poklet/cassandra
	for i in {2..10}; do docker run -d --name c$i --link c1:c1 poklet/cassandra; done

**Do not run this in production!**

Every time you start a container its IP changes so it's a new node for the cluster. Links are great but they have limitations.