# Project Title

Creating ERC20 Tokens

## Description

This Solidity project aims to create an ERC20 token on the Ethereum blockchain. ERC20 tokens are widely used in decentralized applications (DApps). This contract consists of functions for creating, minting and transferring tokens from one account to another.

### Features

- balances: Stores the token balances for each address.
- total_Supply: Tracks the total supply of the token.
- ERC20 Compatibility: Implements the standard ERC20 interface with all required methods.
- Ownership: Utilizes Ownable contract for ownership management.
- Minting: Allows the owner to mint new tokens into an account.
- Burning: Allows user to burn tokens from an account.
- Transfer: Allows user to transfer tokens from one account to another.

## Getting Started

### Executing program

To run this program you can use Remix IDE.
- To get started, go to the Remix website at https://remix.ethereum.org/. 
- Click on Create new file and save a file as .sol extension (eg. Token.sol). 
- Copy and paste the code provided in the github repository.

### Imports

- Import the ERC20 token standard implementation from OpenZeppelin contracts

`import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";`

- Import the Ownable contract from OpenZeppelin

`import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";`


### Compiling and Deploying 

- To compile the contract, click on "Solidity compiler" on the left-hand sidebar. Make sure the "Compiler" option is set ^0.8.18 , and then click on the "Compile Token.sol" button or we can simply click Ctrl+S to compile the contract.

- Once it is compiled you can deploy the contract, by clicking on the "Deploy and Run Transactions" tab in the left-hand sidebar. Select the "Token.sol" contract from the dropdown menu, and then click on the "Deploy" button.

- Within the Deployed/Unpinned Contracts, click on the deployed contract (i.e Token).

- Click on `mintToken` function, provide account address to which you want to mint tokens and amount of tokens to mint. Click on the "Transact" button to execute and check totalSupply.
- Click on `burnToken` function, provide account address from which you want to burn tokens and amount of tokens to burn. Click on the "Transact" button.
- Click on `transferToken` function, provide sender address, recipient address and amount of tokens to transfer.

## Author

Metacrafter Student Nitakshi Azad

## License

This project is licensed under the MIT License.





