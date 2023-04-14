#Docker Container

##Steps

* Fork and clone repo
    1. fork [repository](https://github.com/kadimasum/docker_container_exercise_moringa.git)
    1. clone
        ```
        git clone <git url>

        ```
*Change directory into the cloned URL directory
        ```
        cd <dirname>

        ```
* Create DESCRIPTION.md file
        ```
        touch DESCRIPTION.md
        ```

* Create requirements.txt file
From settings.py , django4.1.7 is required
        ```
        touch requirements.txt
        ```
*Code editor
We will be using Visual Studio
        ```
        code .
        ```      
* Run a virtual Environment
In order to make sure the app is running as it should
    1. Activate the virtual environment
    1. Install Dependencies which are in the requirements.txt file
    1. run server
    1. click on the link provided to view the app
        ```
        python3 -m venv .venv
        . .venv/bin/activate
        pip install -r requirements.txt
        python3 manage.py runserver

        ```
* Update settings.py file
Tweak allowed hosts to any
Add '*'

* Create a Dockerfile
        ##Syntax used for this project
        * FROM
        * LABEL
        * WORKDIR
        * VOLUME 
        * COPY
        * RUN
        * ENV
        * EXPOSE
        * ENTRYPOINT

    To check on volumes:
    ```
    sudo docker volume ls
    ```
* Build and image and name it
        ```
        sudo docker build . -t <name>
        ```

* Run a Container 
8000 is the port number by default it is tcp port number
<name> is the image name
-p is same as --publish

        ```
        sudo docker run -p 8000:8000 <name>
        ```
* git add , commit and push 
        ```
        git add .
        git commit -m "container docker_img:v1 using a Dockerfile"
        git push origin master
        ```
## WSL/Ubuntu tweaks
In order to access a network server in WSL/Ubuntu , run the following commands in your context.
Copy the network server name .
From the browser : network-server:port

        ```
        cat /etc/resolv.conf
        ```
