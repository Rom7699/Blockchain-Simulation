# MTACoin Miner-Server System

A simplified blockchain simulation that implements a multi-process miner-server system written in C. This educational project demonstrates blockchain fundamentals, focusing on inter-process communication, block mining, and validation.

## Overview

MTACoin simulates a basic blockchain network where multiple miner processes compete to solve cryptographic puzzles (Proof of Work) while a central server validates and maintains the blockchain. The system is designed to run in a Linux environment and utilizes Docker for containerization.

## System Architecture

### Miner Component
- Reads difficulty configuration from a config file
- Connects to the server via named pipes (FIFO)
- Mines new blocks by incrementing a nonce and calculating hashes
- Sends mined blocks to the server for verification

### Server Component
- Initializes the blockchain with a genesis block
- Manages block validation using Proof of Work (PoW)
- Adds valid blocks to the blockchain
- Broadcasts new blocks to all connected miners

## Key Technologies

- **Inter-process Communication**: Named pipes (FIFO)
- **Containerization**: Docker with Ubuntu-based images
- **Environment**: Linux (Ubuntu)
- **Consensus Mechanism**: Blockchain with Proof of Work

## Dependencies

- Configuration file: `mtacoin.conf`
- Configuration location: `/tmp/mtacoin/`
- Named pipes directory: `/tmp/mtacoin/`

## Installation and Setup

### Prerequisites
- Linux operating system (tested on Ubuntu)
- Docker installed
- Basic understanding of terminal commands

### Quick Start

1. Set executable permissions for the script:
   ```bash
   chmod 766 runMtaCoin.sh
   ```

2. Execute the script:
   ```bash
   ./runMtaCoin.sh
   ```

By default, this will start a server process with 3 miner processes.

## Configuration

The system uses a configuration file (`mtacoin.conf`) that defines parameters such as mining difficulty. This file must be located in the `/tmp/mtacoin/` directory.

## Docker Integration

Both miner and server components are Dockerized using Ubuntu-based Linux images. The Docker configuration:
- Installs all necessary dependencies
- Sets up directories for execution
- Configures the multi-process environment

## Directory Structure

```
mtacoin/
├── miner/
│   ├── Dockerfile.miner
│   └── miner.c
├── server/
├── runMtaCoin.sh
├── .gitignore
└── README.md
```

## Customization

The default configuration starts a server with 3 miners. You can modify the `runMtaCoin.sh` script to adjust:
- Number of miners
- Mining difficulty
- Other operational parameters

## Notes

- The script maps the named pipes and the `mtacoin.conf` file to the `/tmp/mtacoin` directory
- For educational purposes only, not intended for production use
- Demonstrates fundamental blockchain concepts in a simplified environment

## Troubleshooting

If you encounter issues:
1. Ensure the `/tmp/mtacoin` directory exists and has appropriate permissions
2. Verify Docker is properly installed and running
3. Check that the configuration file is properly formatted

## Educational Value

This project helps demonstrate:
- Blockchain fundamentals
- Proof of Work consensus
- Multi-process communication in Linux
- Docker containerization
