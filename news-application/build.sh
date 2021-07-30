#!/bin/bash

clone-dir() {
	git clone https://github.com/hllvc/demo-app.git
	cd demo-app/news-application 2> /dev/null || clone-dir
}

cd demo-app/news-application 2> /dev/null || clone-dir
git checkout feature/docker
git pull

mvn -DskipTests clean install
