
# Fake Apache Log Generator

This script generates a boatload of fake apache logs very quickly. Its useful for generating fake workloads for [data ingest](http://github.com/streamsets/datacollector) and/or analytics applications.

It can write log lines to console, to log files or directly to gzip files.

It utilizes the excellent [Faker](https://github.com/joke2k/faker/) library to generate realistic ip's, URI's etc.

***

## Basic Usage

Generate a single log line to STDOUT
```
$ python apache-fake-log-gen.py  
```

Generate 100 log lines into a .log file
```
$ python apache-fake-log-gen.py -n 100 -o LOG 
```

Generate 100 log lines into a .gz file at intervals of 10 seconds
```
$ python apache-fake-log-gen.py -n 100 -o GZ -s 10
```

Infinite log file generation (useful for testing File Tail Readers)
```
$ python apache-fake-log-gen.py -n 0 -o LOG 
```

Prefix the output filename 
```
$ python apache-fake-log-gen.py -n 100 -o LOG -p WEB1
```


Detailed help
```
$ python apache-fake-log-gen.py -h
usage: apache-fake-log-gen.py [-h] [--output {LOG,GZ,CONSOLE}]
                              [--num NUM_LINES] [--prefix FILE_PREFIX]
                              [--sleep SLEEP]

Fake Apache Log Generator

optional arguments:
  -h, --help            show this help message and exit
  --output {LOG,GZ,CONSOLE}, -o {LOG,GZ,CONSOLE}
                        Write to a Log file, a gzip file or to STDOUT
  --num NUM_LINES, -n NUM_LINES
                        Number of lines to generate (0 for infinite)
  --prefix FILE_PREFIX, -p FILE_PREFIX
                        Prefix the output file name
  --sleep SLEEP, -s SLEEP
                        Sleep this long between lines (in seconds)
```

## As a container
You can run the script inside a container and fake container logs for testing.
You can build your own container:
```
docker build -t ajnouri/apachelogfaker .
```
Simply run the container and set the SLEEP environment variable to interval between logs:

```
docker run -d --hostname faker --name faker -e SLEEP=2 ajnouri/apachelogfaker
```
Use docker logs command to see the logs:
```
docker logs faker
89.48.62.126 - - [16/Apr/2018:09:58:46 +0000] "GET /wp-admin HTTP/1.0" 200 5019 "http://stephens.com/register/" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/5332 (KHTML, like Gecko) Chrome/15.0.873.0 Safari/5332"
110.109.43.69 - - [16/Apr/2018:09:58:48 +0000] "PUT /apps/cart.jsp?appID=4937 HTTP/1.0" 200 5002 "http://baldwin.net/main/explore/terms.html" "Mozilla/5.0 (Windows; U; Windows 98) AppleWebKit/533.36.1 (KHTML, like Gecko) Version/4.0 Safari/533.36.1"
202.184.65.49 - - [16/Apr/2018:09:58:50 +0000] "GET /wp-admin HTTP/1.0" 200 5089 "http://shaw-carr.net/home/" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_1; rv:1.9.6.20) Gecko/2012-05-09 02:12:47 Firefox/3.6.5"
189.217.160.113 - - [16/Apr/2018:09:58:52 +0000] "PUT /posts/posts/explore HTTP/1.0" 200 5045 "http://sweeney-brown.info/" "Mozilla/5.0 (Windows 98; Win 9x 4.90; it-IT; rv:1.9.1.20) Gecko/2010-12-02 06:00:28 Firefox/3.8"
247.14.58.227 - - [16/Apr/2018:09:58:54 +0000] "GET /search/tag/list HTTP/1.0" 200 4943 "http://lewis-ortiz.com/posts/app/search/terms/" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5322 (KHTML, like Gecko) Chrome/13.0.852.0 Safari/5322"
11.133.170.38 - - [16/Apr/2018:09:58:56 +0000] "GET /wp-admin HTTP/1.0" 500 5069 "http://www.jones.com/" "Mozilla/5.0 (Windows NT 6.0; it-IT; rv:1.9.0.20) Gecko/2013-01-18 03:28:34 Firefox/13.0"
```

## Requirements
* Python 2.7
* ```pip install -r requirements.txt```

## License
This script is released under the [Apache version 2](LICENSE) license.

