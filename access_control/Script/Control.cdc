import Control from 0x06

pub fun main() {
  /**************/
  /*** AREA 4 ***/
  /**************/
  // we can read and write pub(set) variable here
  Control.testStruct.a = "change";
  let varA = Control.testStruct.a;
  log(varA);

  // we can only read pub varaible here but we can't write to it
  let varB = Control.testStruct.b;
  log(varB);

  let fun1 = Control.testStruct.structFunc()
  log(fun1)

  // we can't read or write contract and self variable here as there are outside of their scope
}

