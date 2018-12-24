# Running

```
docker run -it --rm cicorias/httrack --help
```

## Download a site:

```
docker run -it --rm cicorias/httrack "http://www.all.net/" -O "/tmp/www.all.net" "+*.all.net/*" -v

```

In this example, we ask httrack to start the Universal Resource Locator (URL) http://www.all.net/ and store the results under the directory /tmp/www.all.net (the -O stands for "output to") while not going beyond the bounds of all the files in the www.all.net domain and printing out any error messages along the way (-v means verbose). This is the most common way that I use httrack. Please note that this particular command might take you a while - and run you out of disk space.


### Another way - but limit external links

```
docker run -it --rm -v $(pwd)/sites:/sites cicorias/httrack "https://web.stanford.edu/class/cs224n/syllabus.html" -O "/sites/cs224n"  -v --ext-depth=2


```