# Spiderman ERC721 Token

Repository for Module 1 of Poly Proof

## Description

In this repository you will get the source code for deploying a ERC721 Token on the Alchemy Amoy testnet

## Getting Started

### Installing

```
npm i
```

to install all node dependencies required to run the project

### Executing program

Setup all the environment variables below.

To deploy the smart contract just run:

```
npx hardhat run scripts/deploy.js --network goerli
```

paste the token address recieved on the env file.

To mint token a token run:

```
npx hardhat run scripts/mint.js --network goerli
```

to change owner of the minted NFT WALLET_ADDRESS to required address in .env

To get prompts for the NFTs run:

```
npx hardhat run scripts/prompt.js --network goerli
```

To check balance of the account in WALLET_ADDRESS in env run:

```
npx hardhat run scripts/getBalance.js --network goerli
```

### Set up Environment variables

Add the Following Values to your .env file

```
PRIVATE_KEY="***"
```

```
WALLET_ADDRESS="***"
```

Wallet must have some MATIC for gas fees for transactions.

```
GOERLI_URL="***"
```

Register on the alchemy platform and you will recieve a free api key for all transactions on a variety of networks. [https://www.alchemy.com/]

```
TOKEN_ADDRESS="***"
```

You will recieve the token address on running the deploy script.

## Authors

Sain Biswas - [sain.biswas614@gmail.com]

## License

This project is licensed under the MIT License.
