/* eslint-disable no-undef */
const { ethers } = require('hardhat');
require('dotenv').config({ path: '.env' });

async function main() {
  const VestingSchedule = await ethers.deployContract('VestingSchedule');

  await VestingSchedule.waitForDeployment();

  console.log(`VestingSchedule deployed to ${VestingSchedule.target}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch(error => {
  console.error(error);
  process.exitCode = 1;
});
