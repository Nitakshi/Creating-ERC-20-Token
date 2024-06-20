//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract My_Token is ERC20,Ownable {

    mapping(address => uint256) private balances;
    uint256 private total_Supply;

    constructor() ERC20("CipherToken", "CPT") Ownable(msg.sender) {
        total_Supply = 0; 
        balances[msg.sender] = total_Supply; 
    }

    function totalSupply() public view override returns (uint256) {
        return total_Supply;
    }

    function mintToken(address account, uint256 amount) public onlyOwner {
        require(account != address(0) ,"ERC20 mint to zero address ('0x0000000000000000000000000000000000000000')");
        total_Supply += amount;
        balances[account] += amount;
    }

    function burnToken(address account,uint256 amount) public{
        require(account != address(0), "Invalid: Zero Address");
        if(balances[account] < amount){
            revert("Burn amount exceeds balance");
        }
        balances[account] -= amount;
        total_Supply -= amount;
    }

     function transferToken(address sender, address recipient, uint256 amount) public returns(bool){
        require(sender != address(0), "Invalid sender address (Zero address '0x0000000000000000000000000000000000000000') ");
        require(recipient != address(0), "Invalid recipient address (Zero address '0x0000000000000000000000000000000000000000')");
        assert(balances[sender] >= amount);
        balances[sender] -= amount;
        balances[recipient] += amount;
        return true;
    }
}
