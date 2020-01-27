# Alkemi Protocol Contracts

![GitHub](https://img.shields.io/github/license/project-alkemi/alkemi-protocol) [![Build Status](https://travis-ci.com/project-alkemi/alkemi-protocol.svg?branch=master)](https://travis-ci.com/project-alkemi/alkemi-protocol) [![CircleCI](https://circleci.com/gh/project-alkemi/alkemi-protocol/tree/master.svg?style=svg)](https://circleci.com/gh/project-alkemi/alkemi-protocol/tree/master)

![GitHub stars](https://img.shields.io/github/stars/project-alkemi/alkemi-protocol?style=social&label=star) ![GitHub forks](https://img.shields.io/github/forks/project-alkemi/alkemi-protocol?style=social&label=fork) ![GitHub watchers](https://img.shields.io/github/watchers/project-alkemi/alkemi-protocol?style=social&label=watch) ![GitHub followers](https://img.shields.io/github/followers/project-alkemi?label=follow&style=social)

> Implementation of Alkemi Protocol in Solidity.
> [alkemi.network](https://alkemi.network/)

![Liquidity Dashboard](https://raw.githubusercontent.com/project-alkemi/alkemi-protocol/master/docs/assets/liquidity-dashboard2.gif)

## Table of Contents

- [Get Started](#get-started)
  - [Local development](#local-development)
- [Testing](#testing)
  - [Code Linting](#code-linting)
- [Networks](#networks)
  - [Testnets](#testnets)
    - [Rinkeby Testnet](#rinkeby-testnet)
  - [Mainnets](#mainnets)
    - [Ethereum Mainnet](#ethereum-mainnet)
- [Documentation](#documentation)
- [Issues](#issues)
- [License](#license)

---

## Get Started

For local development of `alkemi-protocol` you can setup the development environment on your machine.

### Local development

For local development it is recommended to use [ganache](http://truffleframework.com/ganache/) to run a local development chain. Using the ganache simulator no full Ethereum node is required.

As a pre-requisite, you need:

- Node.js
- npm

Clone the project and install all dependencies:

    git clone git@github.com:project-alkemi/alkemi-protocol.git
    cd alkemi-protocol/

    # install project dependencies
    $ npm i

Compile the solidity contracts:

    $ npm run compile

![](https://raw.githubusercontent.com/project-alkemi/alkemi-protocol/master/docs/assets/alk-compile.gif)

In a new terminal, launch an Ethereum RPC client, we use the default ganache-cli command to configure and run a local development ganache:

    $ npm run ganache

Switch back to your other terminal and deploy the contracts:

    $ npm run deploy

## Testing

Run tests with:

    $ npm run test

### Code Linting

Linting is setup for `JavaScript` with [ESLint](https://eslint.org) & Solidity with [Solhint](https://protofire.github.io/solhint/) and [Prettier](https://prettier.io/).

    # lint solidity contracts
    $ npm run prettier:contracts

    # lint tests
    $ npm run lint:tests

Code style is enforced through the CI test process, builds will fail if there're any linting errors.

## Networks

### Testnets

#### Rinkeby Testnet

The contract addresses deployed on `Rinkeby` Test Network:

| Contract      | Address                                                                                                                       |
| ------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| AlkemiToken   | [0x4adFFe7bB8DbB140ae545B1A26f16c86bAfa295f](https://rinkeby.etherscan.io/address/0x4adffe7bb8dbb140ae545b1a26f16c86bafa295f) |
| AlkemiPrime   | [0x6C427C15219DA3cc5F44c1c66D4cB79661628181](https://rinkeby.etherscan.io/address/0x6C427C15219DA3cc5F44c1c66D4cB79661628181) |
| AlkemiNetwork | [0xc597d55b6Dc92e856Fcc833B311586388464B9Ac](https://rinkeby.etherscan.io/address/0xc597d55b6Dc92e856Fcc833B311586388464B9Ac) |
| OracleGuard   | [0x669cC97687c792fc5369d7bdd38cC9CFb2056d98](https://rinkeby.etherscan.io/address/0x669cC97687c792fc5369d7bdd38cC9CFb2056d98) |
| AlkemiOracle  | [0x7B4fD64306AFdA2aFF4b50d9a562E3b6D64c2112](https://rinkeby.etherscan.io/address/0x7B4fD64306AFdA2aFF4b50d9a562E3b6D64c2112) |

#### Kovan Testnet

The contract addresses deployed on `Kovan` Test Network:

| Contract      | Address                                                                                                                       |
| ------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| AlkemiToken   | [0x60B3f59bD5B0F3BC99AfBF28AB53aA6C3C5baad5](https://kovan.etherscan.io/address/0x60B3f59bD5B0F3BC99AfBF28AB53aA6C3C5baad5) |
| AlkemiPrime   | [0x1D237aA864E2E6d3296A2e37AaFD64fc1A8C95bB](https://kovan.etherscan.io/address/0x1D237aA864E2E6d3296A2e37AaFD64fc1A8C95bB) |
| AlkemiNetwork | [0x7087ef6878A4557b86E8140dE664Bf82f75D38ee](https://kovan.etherscan.io/address/0x7087ef6878A4557b86E8140dE664Bf82f75D38ee) |
| OracleGuard   | [0x039a65a451216b7d0448C48af7CE6BE181e3f9dB](https://kovan.etherscan.io/address/0x039a65a451216b7d0448C48af7CE6BE181e3f9dB) |
| AlkemiOracle  | [0x2244364c94a9FCb6f9ae3A4cF38f279706011882](https://kovan.etherscan.io/address/0x2244364c94a9FCb6f9ae3A4cF38f279706011882) |

### Mainnets

#### Ethereum Mainnet

The contract addresses deployed on `Mainnet` Mainnet:

| Contract      | Address                                    |
| ------------- | ------------------------------------------ |
| AlkemiToken   | 0x0000000000000000000000000000000000000000 |
| AlkemiPrime   | 0x0000000000000000000000000000000000000000 |
| AlkemiNetwork | 0x0000000000000000000000000000000000000000 |
| OracleGuard   | 0x0000000000000000000000000000000000000000 |
| AlkemiOracle  | 0x0000000000000000000000000000000000000000 |

## Documentation

- [Contracts Documentation](https://project-alkemi.github.io/alkemi-protocol)

## Issues

If you come across an issue with Alkemi Protocol contracts, do a search in the [Issues](https://github.com/project-alkemi/alkemi-protocol/issues) tab of this repo to make sure it hasn't been reported before. Follow these steps to help us prevent duplicate issues and unnecessary notifications going to the many people watching this repo:

- If the issue you found has been reported and is still open, and the details match your issue, give a "thumbs up" to the relevant posts in the issue thread to signal that you have the same issue. No further action is required on your part.
- If the issue you found has been reported and is still open, but the issue is missing some details, you can add a comment to the issue thread describing the additional details.
- If the issue you found has been reported but has been closed, you can comment on the closed issue thread and ask to have the issue reopened because you are still experiencing the issue. Alternatively, you can open a new issue, reference the closed issue by number or link, and state that you are still experiencing the issue. Provide any additional details in your post so we can better understand the issue and how to fix it.

## License

    MIT License

    Copyright (c) 2019 Alkemi

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
