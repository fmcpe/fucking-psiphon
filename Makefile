.PHONY: init build clean

# The name of the binary to be built
BINARY=brainfuck-psiphon-pro-go

# Initializes the Go module
init:
	go mod init fucking-psiphon
	go mod tidy

# Builds the project
build:
	go build -ldflags "-s -w" -o $(BINARY)

# Cleans our project: deletes binaries
clean:
	if [ -f $(BINARY) ] ; then rm $(BINARY) ; fi