// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract VestingSchedule {

    struct Organization {
        address organizationAddress;
        string name;
        uint256 tokenSupply;
    }

    struct Stakeholder {
        address stakeholderAddress;
        string position;
        uint256 period;
        uint256 startTime;
        uint256 tokenAmount;
        uint256 claimedToken;
    }

    mapping(address => Stakeholder) public stakeholders;
    mapping(address => bool) public whitelistedAddresses;
    mapping(address => Organization) public organizations;
    mapping(address => uint) public balances;

    event NewStakeholder(uint256 startTime, uint256 period);
    event Whitelisted(uint256 time, address stakeholder);
    
    function createOrganization(string memory _name, address _organizationAddress, uint256 _token) external {
           organizations[_organizationAddress] = Organization({
            organizationAddress: _organizationAddress,
            name: _name,
            tokenSupply: _token
        });
    }


    function newStakeholder(
        address _stakeholderAddress,
        string memory _position,
        uint256 _period,
        uint256 _token
    ) external {
        require(organizations[msg.sender].organizationAddress == msg.sender, "Unauthorized");
        require(organizations[msg.sender].tokenSupply >= _token, "cannot be greater than token");

        stakeholders[_stakeholderAddress] = Stakeholder({
            stakeholderAddress: _stakeholderAddress,
            position: _position, 
            period: _period,
            startTime: block.timestamp,
            tokenAmount: _token,
            claimedToken: 0
        });

        emit NewStakeholder(block.timestamp, _period);
    }

    function whitelistAddress(address _stakeholder) external {
        require(organizations[msg.sender].organizationAddress == msg.sender, "You're not the organisation owner");
        whitelistedAddresses[_stakeholder] = true;

        emit Whitelisted(block.timestamp, _stakeholder);
    }

    function claimToken() external {
        require(whitelistedAddresses[msg.sender], "You're not whitelisted");
        Stakeholder storage stakeholder = stakeholders[msg.sender];
        require(organizations[msg.sender].organizationAddress == msg.sender || 
        stakeholder.stakeholderAddress == msg.sender, "not in organisation");
        require(block.timestamp >= stakeholder.startTime + stakeholder.period, "Vesting period is over");

        uint256 claimableTokens = stakeholder.tokenAmount - stakeholder.claimedToken;
        require(claimableTokens > 0, "Insufficient funds");

        stakeholder.claimedToken += claimableTokens; 
        balances[stakeholder.stakeholderAddress] =  claimableTokens;
    }
   

    function getClaimedToken() external view returns (uint256){
        return balances[msg.sender];
    }
    function getposition(address _address) external view returns (Stakeholder memory){
        return stakeholders[_address];
    }
}

