# Flipper MCP2518FD App

[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/Reboot-Codes/flipper-mcp2518fd-app/rust.yml?label=Build)](https://github.com/Reboot-Codes/flipper-mcp2518fd-app/actions/workflows/rust.yml) [![GitHub Issues Number](https://img.shields.io/github/issues/Reboot-Codes/flipper-mcp2518fd-app?label=Issues)](https://github.com/Reboot-Codes/flipper-mcp2518fd-app/issues)

A flipper application use use the MCP2518FD to interface with a CAN FD bus.

# Building

## Reproducable Build Environment

Ensure you have docker installed, running, and permissions to access it. Clone this repository with submodules:

```bash
git clone --recurse-submodules https://github.com/Reboot-Codes/flipper-mcp2518fd-app
```

Then run `build.sh` or `build.ps1`

## "I want to do it my way"

Clone this repository with submodules:

```bash
git clone --recurse-submodules https://github.com/Reboot-Codes/flipper-mcp2518fd-app
```

Ensure you have the nightly toolchain for the `thumbv7em-none-eabihf` target. (Yes, the flipper uses ARM v7 in thumb mode with hardware float)

```bash
rustup target add --toolchain nightly thumbv7em-none-eabihf
```

Then build the FBT.

```bash
cd ./app
cargo build --release
```

The FBT will be in `./app/target/thumbv7em-none-eabihf/release/`
