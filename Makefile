evaluation:
	/usr/local/bin/docker build -t lappsgrid/evaluation .

push:
	/usr/local/bin/docker push lappsgrid/evaluation
	
help:
	@echo "GOALS"
	@echo "evaluation - builds the Vassar tomcat server"
	@echo "push       - uploads the image to hub.docker.com"
	@echo "help       - displays this help message"
	@echo
