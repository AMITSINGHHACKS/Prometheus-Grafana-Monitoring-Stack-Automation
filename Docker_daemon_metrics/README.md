To expose the docker daemon metrics create or edit the file "daemon.json”

Exposing Docker daemon metrics does not need any exporter so it directly exposes the metrics which can be read by prometheus

Default Dir = /etc/docker

if daemon.json is not present create that file using “sudo” and add the below line

```json
{ 
"metrics-addr": "0.0.0.0:9323", "experimental": true 
}
```

Default docker daemon exposes metrics on port "9323”

*You can also add the below line instead in that daemon.json file but it usually doesnt works and doesnt expose the metrics so u can use the above snippet which has 0.0.0.0 ip*

```json
{ 
"metrics-addr": "your VM IP :9323", "experimental": true 
}
```
