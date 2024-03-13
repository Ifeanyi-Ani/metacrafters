# Cart Order Contract

This is a smart contract written in Cadence for managing shopping cart orders on the Flow blockchain. It allows users to create, and retrieve item

## Introduction

The Cart Order Contract is designed to facilitate the management of shopping cart orders on the Flow blockchain. It consists `CartOrder` structs representing a shopping cart order containing multiple items.

## Getting Started

To deploy and interact with the Cart Order Contract, you'll need to have access to the Flow blockchain. You can set up a local Flow emulator or use the Flow Testnet for testing purposes.

Ensure you have the Flow CLI installed, and your account is configured properly.

## Usage

1. **Deploy the Contract**: Deploy the Cart Order Contract to the Flow blockchain using the Flow CLI or the Flow Playground.

2. **Create a Cart Order**: Call the `addToCart` transaction to create a new shopping cart order. Provide the `product_id`, `product_name` `quantity` representing the items in the order.

3. **Retrieve a Cart Order**: Use the `getCartOrder` function to retrieve a specific cart order by its `product_id`.

## Examples with videos

see link https://www.loom.com/share/f0b79587e7614d15803b3d9ac83e7a04?sid=06a011ae-da6b-4d11-bee7-866f1928cb28
