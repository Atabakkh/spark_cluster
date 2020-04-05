FROM pysparkbase:1.0.1

#COPY runworker.sh /

ENV SPARK_WORKER_WEBUI_PORT 8081
ENV SPARK_WORKER_LOG /spark/logs
ENV SPARK_MASTER "spark://pysparkmaster:7077"


COPY  runworker.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/runworker.sh
RUN ln -s /usr/local/bin/runworker.sh / # backwards compat

EXPOSE 8081

#CMD ["/bin/bash", "/runworker.sh"]
