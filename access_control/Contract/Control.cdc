access(all) contract Control {
    pub var testStruct: Access

// variable a
//   read scope  : 1,2,3,4
//   write scope : 1,2,3,4

// variable b
//   read scope  : 1,2,3,4
//   write scope : 1

// variable c
//   read scope  : 1,2,3
//   write scope : 1

// variable d
//   read scope  : 1
//   write scope : 1

// function publicFunc
//   can be called AREA : 1,2,3,4Acc

// function contractFunc
//   can be called AREA : 1,2,3

// function privateFunc
//   can be called AREA : 1

    pub struct Access {

        //
        // 4 Variables
        //

        pub(set) var a: String

        pub var b: String

        access(contract) var c: String

        access(self) var d: String

        //
        // 3 Functions
        //

        pub fun publicFunc() {}

        access(contract) fun contractFunc() {}

        access(self) fun privateFunc() {}


        pub fun structFunc() {
            /**************/
            /*** AREA 1 ***/
            /**************/
        // we can read and write all the variable here
        self.a = "change variable a at area 1";
        let varA = self.a;

        self.b = "change variable b at area 1";
        let varB = self.b;

        self.c = "change variable c at area 1";
        let varC = self.c;

        self.d = "change variable d at area 1";
        let varD = self.d;

        self.publicFunc();
        self.contractFunc();
        self.privateFunc();
    
        }

        init() {
            self.a = "a"
            self.b = "b"
            self.c = "c"
            self.d = "d"
        }
    }

    pub resource SomeResource {
        pub var e: Int;

        pub fun resourceFunc() {
            /**************/
            /*** AREA 2 ***/
            /**************/

        Control.testStruct.a = "change variable a at area 2";
        let varA = Control.testStruct.a;

        let varB = Control.testStruct.b;
    
        let varC = Control.testStruct.c;

        Control.testStruct.publicFunc();
        Control.testStruct.contractFunc();
        }

        init() {
            self.e = 17
        }
    }

    pub fun createSomeResource(): @SomeResource {
        return <- create SomeResource()
    }

    pub fun questsAreFun() {
        /**************/
        /*** AREA 3 ****/
        /**************/

        Control.testStruct.a = "change variable a at area 3";
        let varA = self.testStruct.a;

        let varB = self.testStruct.b;

        let varC = self.testStruct.c;

        self.testStruct.publicFunc();
        self.testStruct.contractFunc();
    }

    init() {
        self.testStruct = Access()
    }
}

