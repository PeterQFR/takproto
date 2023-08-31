#1/bin/bash

protoc --proto_path=takproto --python_out=pycot/proto takproto/*.proto
