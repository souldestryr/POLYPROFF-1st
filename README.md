# Bridging a Set of NFTs from pinata and Dalle

Repository for Module 1 of Poly Proof

## Description

In this repository you will get the source code for deploying a ERC721 Token on the Infura Sepolia testnet

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
npx hardhat run scripts/deploy.js --network sepolia
```

paste the token address recieved on the env file.

To mint token a token run:

```
npx hardhat run scripts/mint.js --network sepolia
```

to change owner of the minted NFT WALLET_ADDRESS to required address in .env

To get prompts for the NFTs run:

```
npx hardhat run scripts/prompt.js --network sepolia
```

To check balance of the account in WALLET_ADDRESS in env run:

```
npx hardhat run scripts/getBalance.js --network sepolia
```

### Set up Environment variables

Add the Following Values to your .env file

```
PRIVATE_KEY="***"
```

```
WALLET_ADDRESS="***"
```

Wallet must have some ETHEREUM for gas fees for transactions.

```
SEPOLIA URL=""
```

Register on the INFURA platform and you will recieve a free api key for all transactions on a variety of networks. [(https://app.infura.io/)]

```
TOKEN_ADDRESS="***"
```

You will recieve the token address on running the deploy script.
![image](https://github.com/user-attachments/assets/07fc9203-a86e-43dc-9693-5604834f3649)
Check this image for infura transactions i made.
## Authors

Devansh Sharma - souldestryr@gmail.com

## License

This project is licensed under the MIT License.
