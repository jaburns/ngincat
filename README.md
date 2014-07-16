ngincat
=======

Tiny bash HTTP server using netcat

```
git clone https://github.com/jaburns/ngincat
cd ngincat
./server.sh 8080 &
xdg-open http://localhost:8080/index.html
```

Be aware of the following vulnerability. Don't run this on an open port!
```
curl localhost:8080/../.ssh/id_rsa
```
