#!/bin/bash
docker run -p 8080:80 -v ${PWD}/site:/var/www lucee/lucee5-nginx