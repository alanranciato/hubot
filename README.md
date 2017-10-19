# Hubot stuff

## To get ready

```sh
# requires a bit of manual work for now.... sorry
docker-compose build

# run docker to see if image is good
docker run -it --rm hubot_hubot bash
# inside the container do this
bin/hubot
# Now you should be on the hubot terminal env
exit now

# run docker again, but this time let's create hubot files using the docker image. run it at the project root dir.
docker run -it --rm -v `pwd`/hubot/src:/usr/src/app -u hubot hubot_hubot bash -c "yo hubot --defaults --owner='no one' --name='nameofyourbot' --description='mybot'"
# the above command creates source files and then destroy the container
# However, if you want to test out hubot, you can do this instead
docker run -it -v `pwd`/hubot/src:/usr/src/app -u hubot hubot_hubot bash
yo hubot --defaults --owner='no one' --name='nameofyourbot' --description='mybot'
bin/hubot

# Now, update src/scripts to add new functionalities and ctrl + c to quit hubot and then re-execute `bin/hubot`

```
