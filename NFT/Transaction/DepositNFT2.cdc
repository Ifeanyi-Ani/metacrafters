import NonFungibleToken from 0x05;
import CryptoPoops from 0x06;

transaction(recipient: Address, name: String, favouriteFood: String, luckyNumber: Int) {
    prepare(acc: AuthAccount) {
        let refMinter = acc.borrow<&CryptoPoops.Minter>(from: /storage/Minter)?? panic("failed to borrow reference from Minter");

        let refCollections = getAccount(recipient).getCapability(/public/Collections)
        .borrow<&CryptoPoops.Collection{CryptoPoops.ICollection}>()
        ?? panic("Collections2 not found in the address")

        refCollections.deposit(token: <- refMinter.createNFT(name: name, favouriteFood: favouriteFood, luckyNumber: luckyNumber))
        
    }
    execute{
        log("Successfully add NFT2 to Collections2")
    }
}
