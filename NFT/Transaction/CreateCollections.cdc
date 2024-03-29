import NonFungibleToken from 0x05;
import CryptoPoops from 0x06;

transaction {
    prepare(acc: AuthAccount) {
        acc.save(<- CryptoPoops.createEmptyCollection(), to: /storage/Collections);
        acc.link<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>(/public/Collections, target: /storage/Collections);
    }

    execute {
        log("CryptoPoops Collections created")
    }
}


