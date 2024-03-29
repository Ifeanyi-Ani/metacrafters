# CryptoPoops NFT

This repository contains a smart contract named `CryptoPoops` along with several scripts to interact with it. The `CryptoPoops` contract implements the Non-Fungible Token (NFT) standard and provides functionality for creating, managing, and transferring NFTs.

## Contract Overview

The `CryptoPoops` contract defines a standard for NFTs on the Flow blockchain ecosystem. It includes the following main components:

- `NonFungibleToken` interface: Defines the standard interface that all NFT contracts should implement.
- `NFT` resource: Represents a single Non-Fungible Token in the smart contract.
- `Collection` resource: Stores a user's NFT collection and provides functions for managing tokens within the collection.
- `Provider` and `Receiver` resource interfaces: Declare functions for withdrawing and depositing tokens.
- `ICollection` interface: Declares functions for depositing, getting IDs, and borrowing NFTs.
- `Minter` resource: Defines a resource for creating NFTs.

## Scripts

The repository includes several scripts to interact with the `CryptoPoops` contract:

1. **Create Collection Transaction (createCollection2.cdc)**: A transaction script to create an empty collection of CryptoPoops tokens and make it accessible publicly.
2. **Deposit NFT Transaction (DepositNFT.cdc)**: A transaction script to create and deposit a new NFT into a specified recipient's collection. Note only the address that deploy the contract can call this.
3. **Get IDs Script (AddressCollections2Id)**: A script to retrieve the IDs of NFTs stored within a specified account's collection.
4. **Read NFT Script (ReadBorrowAuthNFT)**: A script to read an authenticated reference to a specific NFT within a specified account's collection.
