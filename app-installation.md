## Install Erlang (No Necessary)

```
sudo add-apt-repository ppa:rabbitmq/rabbitmq-erlang
sudo apt update
sudo apt install erlang
```

## Install Rabbit MQ Server

```
sudo bash ./rabbitmq-server.sh
```

## Install Nvidia Driver

Search the latest version (nvidia-driver-[version]).

```
apt search nvidia-driver
```

After that run the following command.

```
sudo apt install nvidia-driver-<version>

sudo prime-select nvidia

reboot
```

## Install Anaconda

Download the Anaconda from this link: https://www.anaconda.com/download/#linux

```
sudo apt install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

shasum -a 256 /PATH/FILENAME

bash /PATH/FILENAME
```

## Install Jupyter Notebook

Install the classic Jupyter Notebook with (After installing Anaconda):

```
pip install notebook
```

To run the notebook:

```
jupyter notebook
```

## Install Docker Desktop

To install Docker Desktop follow the following link:

```
https://docs.docker.com/desktop/install/ubuntu/
```
