# Awesome Inc. Website Documentation

## Prerequisites
* Go Hugo version 0.84.0extended
* GNU Make version 3.81+

## Lifecycle
* `build`: Generate the website from the markdown and configuration files in the directory dist/.
* `clean`: Cleanup the content of the directory dist/
* `post`: Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.

## Usage
* `make build`: Generates the website
* `make clean`: Removes all files from the directory /dist
* `make post`: Post a new blog post 
* `make help`: Show the help usage
* `make check`: check the markdown's lint
* `make validate`: validate W3C