pragma solidity >=0.6.0 <0.7.0;

import "@nomiclabs/buidler/console.sol";

contract SmartContractWallet {

  string public purpose = "Start with a spellling error.";
  address public owner;

  constructor() public {
    owner = msg.sender;
    console.log("Smart Contract Wallet is owned by:",owner);
  }

  fallback() external payable {
    console.log(msg.sender,"just paid",msg.value);
  }

  function withdraw() public {
    msg.sender.transfer((address(this)).balance);
  }

  function updateOwner(address newOwner) public {
    //require(msg.sender == owner, "SmartContractWallet::updateOwner NOT THE OWNER!");
    owner = newOwner;
  }


}