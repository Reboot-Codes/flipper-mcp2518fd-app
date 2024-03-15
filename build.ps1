if (Test-Path -Path './' -PathType Container) {
  "Flipper Zero Rust library and tooling not found, downloading..."
  git submodule update --init --recursive
}

docker build -t flipper_mcp2518fd_app .
docker run -i -v $pwd:"/opt/run" flipper_mcp2518fd_app "bash -c 'cd ./app && cargo build --release'"
