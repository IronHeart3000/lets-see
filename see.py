import base64
from os import system

url = (base64.b64decode("VGVhbVVsdHJvaWQvVWx0cm9pZA==".encode("ascii"))).decode("ascii")
system(f"git clone -b main https://github.com/{url} bot")
system("pip3 install -U -r bot/requirements.txt")
system("pip3 install -U -r bot/resources/startup/optional-requirements.txt")
system("pip3 install av --no-binary av")
