boilr-go-lambda
===============

boilr-go-lambda is a template for use with [boilr](https://github.com/tmrts/boilr/). With it, you can quickly bootstrap a project with everything you should need to get AWS Lambda up and running with the [aws-lambda-go-shim](https://github.com/eawsy/aws-lambda-go-shim).

Quick Start
-----------

    make install-boiler
    make install-template
    mkdir newproject
    cd newproject
    boilr template use go-lambda .

Installation
------------

### Installing boilr ###

If you want the source code:

    go get github.com/tmrts/boilr
    go install github.com/tmrts/boilr

If you need only the binary (probably):

    # safest
    curl https://raw.githubusercontent.com/tmrts/boilr/master/install > install
    # inspect script
    chmod +x install
    ./install

    # easiest
    make install-boilr

### Installing the template ###

Then add the template to the local boiler repository.

    git clone github.com/cleardataeng/boilr-go-lambda
    cd boilr-go-lambda
    boilr template save . go-lambda
    # or...
    boilr template download github.com/cleardataeng/boilr-go-lambda go-lambda
    # easiest
    make install-template

Usage
-----

    cd newproject
    boilr template use go-lambda .
    # follow the prompts
    # ...
    # profit
