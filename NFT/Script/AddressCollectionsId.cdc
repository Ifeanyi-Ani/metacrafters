import NonFungibleToken from 0x05;
import CryptoPoops from 0x06;

pub fun main(acc: Address):[UInt64] {
    let reference = getAccount(acc).getCapability(/public/Collections)
    .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>()
    ?? panic("There is no Collection in this address");

    return reference.getIDs();
}
