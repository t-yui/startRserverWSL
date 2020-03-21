#!/bin/bash
# -*- coding: utf-8 -*-
​
function log() {
    local fname=${BASH_SOURCE[1]##*/}
    echo -e "$(date '+%Y-%m-%dT%H:%M:%S') ${PROCNAME} (${fname}:${BASH_LINENO[0]}:${FUNCNAME[1]}) $@"
}
​
sudo service rstudio-server start
if [ $? -gt 0 ]; then
    log "[ERROR] Rserver did not start."
else
    log "[INFO] Rserver started successfully!"
    echo "Access the URL Below"
    echo "http://localhost:8787"
    /mnt/c/'Program Files (x86)'/Google/Chrome/Application/chrome.exe http://localhost:8787
fi
