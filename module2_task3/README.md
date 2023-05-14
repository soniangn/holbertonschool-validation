# Testing in the Software Development Methodology

## Build an Application using Make

## Prerequisites
* Golang in v1.15.*
* NPM v7+ with NodeJS v14.* (stable)
* Python 3 with pip module
* golangci-lint

## Project Lifecycle
The life-cycle of this project is the following:

`build`: compile the source code of the application to a binary named awesome-api
`run`: Run the application in background by executing the binary awesome-api, and write logs into a file named awesome-api.log 
`stop`: Stop the application with the command kill XXXXX where XXXXX is the Process ID of the application.
`clean`: Stop the application. Delete the binary awesome-api and the log file awesome-api.log
`test`: Test to ensure that it behaves as expected. 
`help`: Display the help
`lint`: lint the source code
`unit-tests`: run unit-tests
`integration-tests`: run integration-tests