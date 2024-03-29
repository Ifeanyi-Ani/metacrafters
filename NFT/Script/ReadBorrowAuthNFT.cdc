import NonFungibleToken from 0x05;
import CryptoPoops from 0x06;

pub fun main(acc: Address, id: UInt64) {
    let reference = getAccount(acc).getCapability(/public/Collections)
    .borrow<&CryptoPoops.Collection{CryptoPoops.ICollection}>()
    ?? panic("Collections not found");

    let vari = reference.borrowAuthNFT(id: id)
    log(vari)
}
