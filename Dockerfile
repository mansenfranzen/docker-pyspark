FROM openjdk:11-jre-slim AS JAVA_IMAGE

FROM python:latest-slim AS PYTHON_IMAGE
COPY --from=JAVA_IMAGE /usr/local/openjdk-11 /usr/local/openjdk-11

ENV JAVA_HOME /usr/local/openjdk-11
ENV PATH $JAVA_HOME/bin:$PATH

RUN pip install --no-cache-dir pyspark pandas
