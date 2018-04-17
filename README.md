## Generate a log file
You can run the script using a python image..
Removed the CMD statement from Dockerfile.

Build an image:
```
docker build -t filelogger .
```
Simply run the container and pass the command from CLI:

```
docker run -it --rm  -v "$PWD":/data filelogger python apache-fake-log-gen.py -n 50000 -o LOG
```
Check the resulting file:
```
tail access_log_20180416-233547.log
31.193.0.27 - - [21/Jul/2018:12:41:00 +0000] "PUT /list HTTP/1.0" 200 4967 "http://www.turner.info/tag/search.php" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5310 (KHTML, like Gecko) Chrome/15.0.825.0 Safari/5310"
78.249.14.106 - - [21/Jul/2018:12:44:50 +0000] "PUT /posts/posts/explore HTTP/1.0" 200 4945 "http://santiago-tran.com/" "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5320 (KHTML, like Gecko) Chrome/15.0.831.0 Safari/5320"
221.147.155.193 - - [21/Jul/2018:12:48:43 +0000] "PUT /wp-content HTTP/1.0" 200 5000 "http://sparks-powell.org/app/main/blog/privacy/" "Opera/9.63.(Windows NT 6.1; it-IT) Presto/2.9.175 Version/12.00"
115.213.7.101 - - [21/Jul/2018:12:52:10 +0000] "GET /app/main/posts HTTP/1.0" 200 4894 "http://www.hood.com/login.jsp" "Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_5) AppleWebKit/5360 (KHTML, like Gecko) Chrome/14.0.830.0 Safari/5360"
231.210.61.152 - - [21/Jul/2018:12:53:53 +0000] "POST /search/tag/list HTTP/1.0" 200 5017 "http://www.ryan.net/search.jsp" "Mozilla/5.0 (X11; Linux i686) AppleWebKit/5350 (KHTML, like Gecko) Chrome/13.0.853.0 Safari/5350"
7.135.2.174 - - [21/Jul/2018:12:55:01 +0000] "PUT /list HTTP/1.0" 200 4929 "http://www.garrett.com/terms.php" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5342 (KHTML, like Gecko) Chrome/13.0.841.0 Safari/5342"
30.254.161.228 - - [21/Jul/2018:12:55:59 +0000] "GET /apps/cart.jsp?appID=1563 HTTP/1.0" 200 4998 "http://www.johnston.net/faq.html" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5340 (KHTML, like Gecko) Chrome/15.0.895.0 Safari/5340"
5.121.248.253 - - [21/Jul/2018:13:00:40 +0000] "GET /explore HTTP/1.0" 200 5015 "http://gray-ramirez.biz/blog/tag/search/" "Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.1; Trident/4.0)"
137.11.106.85 - - [21/Jul/2018:13:01:42 +0000] "POST /search/tag/list HTTP/1.0" 200 5088 "http://fletcher-carter.info/search/posts/tags/faq/" "Mozilla/5.0 (X11; Linux i686) AppleWebKit/5342 (KHTML, like Gecko) Chrome/15.0.883.0 Safari/5342"
180.5.53.8 - - [21/Jul/2018:13:04:14 +0000] "GET /wp-content HTTP/1.0" 200 4985 "http://www.phillips.biz/search/tag/home/" "Mozilla/5.0 (Windows NT 5.0; en-US; rv:1.9.1.20) Gecko/2014-12-13 09:23:29 Firefox/10.0"
```
