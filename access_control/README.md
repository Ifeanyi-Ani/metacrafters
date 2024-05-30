# Variable Access Control Explanation

This README provides an overview of the scope of variables `a`, `b`, `c`, and `d` within the provided Cadence smart contract.

## Control Contract

The `Control` contract defines a struct named `Access`, which encapsulates four variables: `a`, `b`, `c`, and `d`. These variables are declared with different access modifiers, allowing for various levels of visibility and accessibility within the contract.

### Variable Scope:

1. **Variable `a`:**

   - **Visibility:** Public (`set`)
   - **Reed Area:** 1, 2, 3, 4
   - **Write Area:** 1, 2, 3, 4.

2. **Variable `b`:**

   - **Visibility:** Public (`pub`)
   - **Read Area:** 1, 2, 3, 4.
   - **Write Area:** 1.

3. **Variable `c`:**

   - **Visibility:** Private (`access(contract)`)
   - **Read Area:** 1, 2, 3.
   - **Write Area:** 1.

4. **Variable `d`:**
   - **Visibility:** Private (`access(self)`)
   - **Read Area:** 1.
   - **Write Area:** 1.

5. **Function `publicFunc`:**
   - **Access Area:** 1, 2, 3, 4.

6. **Function `contractFunc`:**
   - **Access Area:** 1, 2, 3.

7. **Function `privateFunc`:**
   - **Access Area:** 1.
