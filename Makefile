BINARY_NAME=k8sFileChurner

build: 

	go build -o ./bin/$(BINARY_NAME) ./main.go 

run: build
	
	./bin/$(BINARY_NAME)

test: 

	go test ./... -v --count=1

clean:

	rm -f ./bin/$(BINARY_NAME)
	./utils/deleteTestFiles.sh
	./deploy-k8s/destroy.sh

	