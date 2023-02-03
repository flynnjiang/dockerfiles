FROM ubuntu:20.04

MAINTAINER "Feng Jiang <flynnjiang@163.com>"

RUN apt-get update && \
	apt-get install -y git-core libgit2-28 libgit2-dev build-essential && \
	pip install pypandoc==1.5 && \
	pip install pygit2==0.28 git-deps \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
