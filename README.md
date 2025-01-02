# DeFi Stablecoin - Bitoiu

This project implements a decentralized stablecoin system, allowing users to deposit wrapped ETH (WETH) and wrapped BTC (WBTC) as collateral to mint a USD-pegged token.

## Table of Contents

- [About](#about)
- [Getting Started](#getting-started)
  - [Requirements](#requirements)
  - [Quickstart](#quickstart)
- [Usage](#usage)
  - [Starting a Local Node](#starting-a-local-node)
  - [Deployment](#deployment)
  - [Testing](#testing)
    - [Test Coverage](#test-coverage)
- [Deployment to Testnet or Mainnet](#deployment-to-testnet-or-mainnet)
  - [Environment Variables](#environment-variables)
  - [Obtaining Testnet ETH](#obtaining-testnet-eth)
  - [Deployment Command](#deployment-command)
- [Interacting with the Contracts](#interacting-with-the-contracts)
- [Gas Estimation](#gas-estimation)
- [Formatting](#formatting)
  
## About

This project enables users to deposit WETH and WBTC as collateral to mint a stablecoin pegged to the USD. The system includes functionalities for collateral management, stablecoin minting, and liquidation mechanisms to maintain stability.

## Getting Started

### Requirements

- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git): Ensure Git is installed by running `git --version`.
- [Foundry](https://book.getfoundry.sh/): Verify installation with `forge --version`.
- [Make](https://www.gnu.org/software/make/): For running predefined scripts in the Makefile.

### Quickstart

```bash
git clone https://github.com/andrei2308/DeFi-Stablecoin.git
cd DeFi-Stablecoin
make build
```

## Usage

### Starting a Local Node

To start a local Ethereum node:

```bash
make anvil
```

### Deployment

With the local node running, deploy the contracts:

```bash
make deploy
```

To deploy to a specific network, use:

```bash
make deploy ARGS="--network <network_name>"
```

### Testing

Run the test suite:

```bash
make test
```

#### Test Coverage

Generate a test coverage report:

```bash
make coverage
```

## Deployment to Testnet or Mainnet

### Environment Variables

Set the following environment variables, preferably in a `.env` file:

- `RPC_URL`: URL of the Ethereum node (e.g., from [Alchemy](https://alchemy.com/)).
- `PRIVATE_KEY`: Your Ethereum account's private key (ensure this account does not hold real funds during development).

### Obtaining Testnet ETH

Acquire testnet ETH from [faucets.chain.link](https://faucets.chain.link/) and verify the balance in your wallet.

### Deployment Command

Deploy to a network (e.g., Sepolia):

```bash
make deploy ARGS="--network sepolia"
```

## Interacting with the Contracts

Use the predefined Makefile scripts or `cast` commands to interact with the deployed contracts. Example commands:

- **Mint WETH**:
  ```bash
  make mint-weth
  ```

- **Approve WETH**:
  ```bash
  make approve-weth
  ```

- **Deposit and Mint Stablecoin**:
  ```bash
  make mint-stablecoin
  ```

## Gas Estimation

Estimate gas costs:

```bash
make gas
```

Review the `.gas-snapshot` file for details.

## Formatting

Ensure code consistency:

```bash
make fmt
```
