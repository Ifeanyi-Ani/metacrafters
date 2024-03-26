# Variable Scope Explanation

This README provides an overview of the scope of variables `a`, `b`, `c`, and `d` within the provided Cadence smart contract.

## Control Contract

The `Control` contract defines a struct named `Access`, which encapsulates four variables: `a`, `b`, `c`, and `d`. These variables are declared with different access modifiers, allowing for various levels of visibility and accessibility within the contract.

### Variable Scope:

1. **Variable `a`:**

   - **Visibility:** Public (`set`)
   - **Access Scope:** Accessible from anywhere outside the contract and within the contract itself.
   - **Access Level:** Readable and writable from anywhere outside the contract and within the contract itself.

2. **Variable `b`:**

   - **Visibility:** Public (`pub`)
   - **Access Scope:** Accessible from anywhere outside the contract and within the contract itself.
   - **Access Level:** Readable and writable from any context within the contract and accessible externally.

3. **Variable `c`:**

   - **Visibility:** Private (`access(contract)`)
   - **Access Scope:** Accessible only within the contract.
   - **Access Level:** Readable and writable only from within the contract. Not accessible externally or within resources.

4. **Variable `d`:**
   - **Visibility:** Private (`access(self)`)
   - **Access Scope:** Accessible only within the struct `Access`.
   - **Access Level:** Readable and writable only within the `Access` struct. Not accessible externally or within resources.
