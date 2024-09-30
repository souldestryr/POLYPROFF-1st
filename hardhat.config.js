require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",
  networks: {
    sepolia: {
      url: 'https://sepolia.infura.io/v3/cc6533e3787745a5926b16a75e6641fb',
      accounts: [process.env.PRIVATE_KEY],
    },
  }
};
