build:
	docker image build --tag godev:0.0.1 .

run:
	docker container run -it \
	-e TOKEN=$(TOKEN)  \
	--publish 9000:9000 \
	--mount type=bind,source="$(PWD)/debug",target=/app,readonly \
	--name godev godev:0.0.1 \
	/bin/bash


clean:
	docker rm godev