/* eslint-disable no-undef */
require('@nomicfoundation/hardhat-toolbox');
require('dotenv').config({ path: '.env' }); // This gets the environment variables

const API_KEY = process.env.API_KEY;
const PRIVATE_KEY = process.env.PRIVATE_KEY;

module.exports = {
  solidity: '0.8.20',
  networks: {
    mumbai: {
      url: API_KEY,
      accounts: [PRIVATE_KEY],
    },
  },
};
