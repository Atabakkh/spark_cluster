FROM pysparkbase:1.0.1

#COPY runmaster.sh /

ENV SPARK_MASTER_PORT 7077
ENV SPARK_MASTER_WEBUI_PORT 8080
ENV SPARK_MASTER_LOG /spark/logs

COPY  runmaster.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/runmaster.sh
RUN ln -s /usr/local/bin/runmaster.sh / # backwards compat

EXPOSE 8080 7077 6066

#ENTRYPOINT ["runmaster.sh"]

#CMD ["/bin/bash", "/runmaster.sh"]

