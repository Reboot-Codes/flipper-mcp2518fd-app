#!bash

docker build -t flipper_mcp2518fd_app .
docker run -i -v $(pwd):/opt/run flipper_mcp2518fd_app "bash"
