DOCKER=/usr/local/bin/docker
IMAGE=lappsgrid/evaluation

evaluation:
	if [ ! -e EvaluationServices.war ] ; then wget http://www.anc.org/downloads/docker/EvaluationServices.war ; fi
	$(DOCKER) build -t $(IMAGE) .

push:
	$(DOCKER) push $(IMAGE)

tag:
	if [ -n "$(TAG)" ] ; then $(DOCKER) tag $(IMAGE) $(IMAGE):$(TAG) ;  $(DOCKER) push $(IMAGE):$(TAG) ; fi
	
help:
	@echo "GOALS"
	@echo "evaluation - builds the Vassar tomcat server"
	@echo "push       - uploads the image to hub.docker.com"
	@echo "tag        - tags the image on hub.docker.com"
	@echo "help       - displays this help message"
	@echo
