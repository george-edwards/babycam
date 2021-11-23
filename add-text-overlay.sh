#!/bin/bash
curl "http://localhost:7999/1/config/set?text_left=SierraCam\\n$(sudo netstat -anp | grep 192.168.1.70:8071 | grep ESTABLISHED | wc -l)%20watching"
