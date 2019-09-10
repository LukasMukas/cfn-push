# cfn-push

A tool to use cfn-lint and cfn-nag to check a cloudformation template before uploading the template to an s3 bucket. 

## Getting Started

This is a description of the simple install.

### Prerequisites

An installation of python is required and python must be on the path as an executable. https://www.python.org/downloads/

### Installing

Running the install.sh shell script will ensure that the following prerequisites are installed on the machine

- pip
- cfn-lint
- rvm
- ruby
- gem
- cfn_nag

It will then move the run.sh file to the location HOME_DIR/.local/bin/cfn-push and will make the file executable.

## Usage

cfn-push TEMPLATE_FILE S3_BUCKET
