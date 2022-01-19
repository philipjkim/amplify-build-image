IMAGE_NAME=amplify-build-image
DOCKER_REPO=philipjkim

build-img:
	docker build -t $(IMAGE_NAME) .

tag-img:
	docker tag $(IMAGE_NAME):latest $(DOCKER_REPO)/$(IMAGE_NAME):latest

push-img: build-img tag-img
	docker login
	docker push $(DOCKER_REPO)/$(IMAGE_NAME):latest
