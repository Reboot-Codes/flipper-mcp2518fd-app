#!bash

if [ -d "./flipperzero" ]; then
  echo "Flipper Zero Rust library and tooling not found, downloading..."
  git submodule update --init --recursive
fi

docker build -t flipper_mcp2518fd_app .
docker run -i -v $(pwd):/opt/run flipper_mcp2518fd_app "bash -c \"cd ./app && cargo build --release\""

echo "\nDone! The FAP is located in ./app/target/thumbv7em-none-eabihf/release/"
