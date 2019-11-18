VERSION := "1.0.0"

build:
	docker build -t joernahrens/coyo-android-docker:$(VERSION) .

push: build
	docker push joernahrens/coyo-android-docker:$(VERSION)
