FROM ubuntu
ARG VERSION=6.5.0
ADD https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-$VERSION-x64.bin response.varfile /
RUN chmod +x /atlassian-confluence-$VERSION-x64.bin
RUN yes '' | /atlassian-confluence-$VERSION-x64.bin && usermod -u 1002 confluence && groupmod -g 1002 confluence && chown -R --from=1000:1000 1002:1002 / || chown -R --from=1000 1002 / || true
EXPOSE 8090
CMD service confluence start && tail -f /var/atlassian/application-data/confluence/logs/atlassian-confluence.log
