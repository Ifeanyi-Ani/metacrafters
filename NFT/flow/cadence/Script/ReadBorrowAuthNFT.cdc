import NonFungibleToken from "../Contract/NonFungibleToken.cdc"
import CryptoPoops from "../Contract/CryptoPoops.cdc"

pub fun main(acc: Address, id: UInt64) {
    let reference = getAccount(acc).getCapability(/public/Collections)
    .borrow<&CryptoPoops.Collection{CryptoPoops.ICollection}>()
    ?? panic("Collections not found");

    let vari = reference.borrowAuthNFT(id: id)
    log(vari)
}
