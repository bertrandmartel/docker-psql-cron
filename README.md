# Docker PSQL Cron

[![Build Status](https://travis-ci.org/bertrandmartel/docker-psql-cron.svg?branch=master)](https://travis-ci.org/bertrandmartel/docker-psql-cron)
[![License](http://img.shields.io/:license-mit-blue.svg)](LICENSE.md)

Simple Cron Docker image deleting all expired entry every minute in psql

## Usage

Edit `bdd.sh` with table name & expirationDate field 

Then :
```bash
docker build . -t cron-psql
docker run -it -e "POSTGRES_URL=postgresql://myUser:myPassword@localhost/MyDatabase" cron-psql
```

In container for logs : 

```bash
tail -f /var/log/cron.log
```

## License

The MIT License (MIT) Copyright (c) 2018 Bertrand Martel
