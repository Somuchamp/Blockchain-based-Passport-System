# Blockchain-based Passport System

## Project Title
Blockchain-based Passport System

## Project Description
Develop a system that manages digital passports with full control given to the user.

## Project Vision
This project envisions a decentralized and secure way to manage passports using blockchain technology. By leveraging decentralization, users will have full control over their passport data without reliance on central authorities.

## Future Scope
- Integration with government and immigration services.
- Expansion to include visas and travel history tracking.
- Enhanced security with zero-knowledge proofs and multi-signature verification.

## Key Features
- Fully decentralized passport storage.
- User-controlled data access and permissions.
- Immutable and tamper-proof record-keeping.
- Secure authentication and identity verification.

## Smart Contract Address
**Deployed Contract Address:** 0x58d227a7d9aad3534418da506463eb7192649188

## How to Use
### Deploying the Contract
1. Deploy the contract using Remix, Hardhat, or Truffle.
2. Copy the deployed contract address and replace `[Insert Contract Address Here]` above.

### Setting a Passport
```solidity
setPassport("John Doe", "American", 631152000, "A12345678");
```

### Retrieving Passport Information
```solidity
getPassport();
```
**Expected Output:**
```
("John Doe", "American", 631152000, "A12345678", true)
```

### Validating Passport
```solidity
validatePassport();
```

### Invalidating Passport
```solidity
invalidatePassport();
```
![image](https://github.com/user-attachments/assets/334b9c4f-1a75-46e0-9314-6e5c09d61c61)

