.PHONY: init clean

# The name of the binary to be built
TUN=tun

# Initializes the Go module
init:
        go mod init fucking-psiphon
	go mod tidy
	go build -ldflags "-s -w" -o $(TUN)
	chmod +x $(TUN)

# Cleans our project: deletes binaries
clean:
	if [ -f tun ] ; then rm tun ; fi
	rm -f go.sum go.mod
