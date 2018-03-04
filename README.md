## docker image for influxdb

- can be pulled from docker hub:
    - [caquicode/influxdb](https://hub.docker.com/r/caquicode/influxdb/)

- hostname: influxdb
- exposes:
    - port 8086
- expects:
    - a volume to map the data folder
- scripts:
    - create.sh - pulls third party influxdb docker image and pushes it to dockerHub;
    - run.sh - runs an image container in the local docker engine;
    - httpquery.sh - queries influxdb http interface to check data in;
- example docker-compose section:

	  influxdb:
	    image: caquicode/influxdb
	    container_name: influxdb
	    ports:
	      - "8086:8086"
	    volumes:
	      - /tmp/influxdb:/var/lib/influxdb



