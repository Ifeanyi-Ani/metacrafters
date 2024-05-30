import Control from 0x06

pub fun main() {
  /**************/
  /*** AREA 4 ***/
  /**************/
  // we can read and write pub(set) variable here

  Control.testStruct.a = "change variable a at area 4";
  let varA = Control.testStruct.a;

  let varB = Control.testStruct.b;

}

