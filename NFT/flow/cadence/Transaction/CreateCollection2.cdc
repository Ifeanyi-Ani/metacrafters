import NonFungibleToken from "../Contract/NonFungibleToken.cdc"
import CryptoPoops from "../Contract/CryptoPoops.cdc"

transaction {
    prepare(acc: AuthAccount) {
        acc.save(<- CryptoPoops.createEmptyCollection(), to: /storage/Collections);
        acc.link<&CryptoPoops.Collection{CryptoPoops.ICollection}>(/public/Collections, target: /storage/Collections);
    }

    execute {
        log("CryptoPoops Collections created")
    }
}



