access(all) contract Control {
    pub var testStruct: Access

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
        // we can read and write all the variable (a,b,c,d) here
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
        // we can read and write all other variable here except variable d which is access(self)
       let varA =  Control.testStruct.c
       log(Control.testStruct.a)

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

      // we can read and write all other variable here except variable d which is access(self)
       let varA =  self.testStruct.c
    }

    init() {
        self.testStruct = Access()
    }
}

