# PyConEs Docker Tutorial

## Flask Simple

### Dockerfile

A dockerfile is a text file that contains instructions to create an image.

Things you can put in a Dockerfile:

* FROM base image we use to build our own image
* RUN Shell commands
	* apt-get update | install | ...
	* mkdir -p
	* chmod/chown ...
* ADD folders, files and tar files
* EXPOSE ports. For security reasons does not open the ports. We have to specify it when we run the container.
* VOLUME to mount volumes
* CMD instruction the container will run when it's started


For example, if we would want to create a container with a nginx we could do something like:

	FROM ubuntu:latest
	RUN apt-get update -y
	RUN apt-get install -y nginx
	RUN echo "Hello pycones, this is a very basic container" > /usr/share/nginx/html/index.html
	EXPOSE 80

Using the Dockerfile we have in this folder, let's build our own image that will run a Flask app

    docker build -t pycones/flasksimple .


Then we run it

	docker run -it --rm pycones/flasksimple

It does not work. Why?

	docker run -it --rm -p 5000 pycones/flasksimple

But we can re-map ports:

    docker run -it --rm -p 5002:5000 pycones/flasksimple


Finally, we test it [http://localhost:5002](http://localhost:5002). The application is listening in port 5000 but we re-map that in our host to 5002. Why? because if you have 3 apps all of them listening the same port it will not work, and we do not want to modify how the app works or it's configured, just how we access it.

If you modify the file app.py you will see that nothing happens. This is because the app is inside the image, so all the changes after building the image will not be there.

If we launch the app using the following parameters, things will change:

    docker run -it --rm -p 5002:5000 -v $(pwd):/usr/src/app pycones/flasksimple


here we are mounting a volume and mapping our current folder, that's what the command $(pwd) does, with a folkder inside the container: `/usr/src/app`


Remember that our image command is `python app.py`, this means that the container will execute our local file

    CMD [ "python", "./app.py" ]

