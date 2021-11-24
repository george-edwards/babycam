#!/bin/bash
curl "http://localhost:7999/1/config/set?text_left=$(sudo netstat -anp | grep "$(hostname -I | awk '{print $1}')":8071 | grep ESTABLISHED | wc -l)%20watching"
