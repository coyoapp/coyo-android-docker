build: 
	docker build -t joernahrens/coyo-android-docker:latest . 

push: build
	docker push joernahrens/coyo-android-docker:latest
