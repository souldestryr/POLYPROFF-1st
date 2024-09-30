// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// You can also run a script with `npx hardhat run <script>`. If you do that, Hardhat
// will compile your contracts, add the Hardhat Runtime Environment's members to the
// global scope, and execute the script.
const hre = require("hardhat");
const fxRootContractABI = require("../fxRootContractABI.json");
const tokenContractJSON = require("../artifacts/contracts/MetaToken.sol/MetaToken.json");

const tokenAddress = "0x42AcDdB66401f532e6bed4De576Bb03934E272d8"; // place your erc20 contract address here
const tokenABI = tokenContractJSON.abi;
const fxERC20RootAddress = "0x77f32d6C7bf3639b2F59C6843420e80E9E3a86aF";
const walletAddress = "0xEEc484A74eF11C3b9F6782D92A95fC5488807987"; // place your public address for your wallet here

async function main() {

    const tokenContract = await hre.ethers.getContractAt(tokenABI, tokenAddress);
    const fxContract = await hre.ethers.getContractAt(fxRootContractABI, fxERC20RootAddress);

    const approveTx = await tokenContract.approve(fxERC20RootAddress, 500);
    await approveTx.wait();

    console.log('Approval confirmed');


    const depositTx = await fxContract.deposit(tokenAddress, walletAddress, 500, "0x6556");
    await depositTx.wait();

    console.log("Tokens deposited");
  
  }
  
  // We recommend this pattern to be able to use async/await everywhere
  // and properly handle errors.
  main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });