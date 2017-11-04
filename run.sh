#!/bin/bash
docker run --name confluence -p 8090:8090 --rm --restart=unless-stopped -d confluence
