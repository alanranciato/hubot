# Hubot stuff

## To get ready

```sh
# First launch it as daemon
docker-compose up -d

# find hubot container name with
docker ps

# attach to interactive mode of hubot
docker attach hubot_hubot_1

# when you want to detach the tty
ctrl + p, ctrl + q
```

## I made a change or added a new script

Congratulations! You made a change. Great.
Do this to restart the bot.

```sh
# On hubot shell
mybot reload
```

That is it!
