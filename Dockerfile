FROM gcr.io/cloud-builders/gcloud

COPY helm-v3.0.0-beta.3-linux-amd64.tar.gz .
COPY run.sh .

RUN tar xvf helm-v3.0.0-beta.3-linux-amd64.tar.gz \
	&& cp linux-amd64/helm /usr/local/bin/helm \
	&& chmod +x /usr/local/bin/helm \
	&& cp run.sh /usr/local/bin/run.sh \
	&& chmod +x /usr/local/bin/run.sh


ENTRYPOINT ["/usr/local/bin/run.sh"]
