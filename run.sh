#!/bin/bash
docker run --name confluence -p 8090:8090 -v /var/atlassian/application-data/confluence:/var/atlassian/application-data/confluence --restart=unless-stopped -d confluence
