docker run -it --rm --name apache-fake-logger --hostname apache-fake-logger -v "$PWD":/data apache-fake-logger python apache-fake-log-gen.py -n 100 -o LOG 
