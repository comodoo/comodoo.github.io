FROM radanalyticsio/radanalytics-io-base

#COPY . /srv/site

WORKDIR /srv/site

USER root

#Compile
#RUN bower --allow-root install && bundler install

#USER 1001

#CMD bundler exec jekyll serve -H 0.0.0.0

RUN touch /startup.sh && \
    echo "bower --allow-root install && bundler install" >> /startup.sh && \
    echo "bundler exec jekyll serve -H 0.0.0.0 --port 8181" >> /startup.sh && \
    chmod +x /startup.sh

ENTRYPOINT /startup.sh