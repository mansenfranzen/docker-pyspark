FROM openjdk:8-jre-slim AS JAVA_IMAGE

FROM python:3.7-slim AS PYTHON_IMAGE
COPY --from=JAVA_IMAGE /usr/local/openjdk-8 /usr/local/openjdk-8

ENV JAVA_HOME /usr/local/openjdk-8
ENV PATH $JAVA_HOME/bin:$PATH

RUN pip install --no-cache-dir pyspark==2.3.4 pandas
