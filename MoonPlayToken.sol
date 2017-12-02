pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract MoonPlayToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function MoonPlayToken(address _owner)  UpgradeableToken(_owner) {
    name = "MoonPlayToken";
    symbol = "MPT";
    totalSupply = 1000000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}