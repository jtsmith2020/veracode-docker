#!/usr/bin/env bash
docker run  --name scan \
    --restart=no \
    -e 'VID=84c1c9d9331c23fb62e4d0c913e8136e' \
    -e 'VKEY=8e9003da10040e25c7f9b237324657d0a573982fdc6cac6b7062ddfe4a92ab89ead61b498f881c82a6caa576300d89317b3e4ba2f580a0baeb73fc6fb580d9c0' \
    --volume $HOME/Development/Hackathon13/veracode/upload:/veracode/upload \
    vcodejtsmith/scan
