# Development 

To save some time, there is a `Makefile` in this project. Feel free to use it. You'll need to install it on your machine `sudo apt install make -y`

## make aliases

`make dev` → Run the server. If your changes are not sent to the container, rebuild your image.

`make build` → Build the image of your server.

`make stop` → Stop the services that are running if there are any.

`make logs` → Show and tail the logs from the server.

`make start` → Run the server in a detached mode. Will be running while you don't stop it.

`make attach` → Attach yourself to the server. Can be used to check files or something.

## Volumes

The shared folder contain all the stuff we are mounting on the server container like `server_config.json`, `world.json`, etc

## Logs

The `logs` folder will have a `server_log.txt` file with all the logs from your server. It's optionnal.

# Workflow

tl:dr : `make dev` to run your server. When you update your files, use `CTRL + C` in the console to shutdown the server. Do it 2 times to kill it instead of gracefully stop it (it's faster). Then, `make dev` again and connect.

If you are using WSL, use the `ifconfig` command to get your IP adress.