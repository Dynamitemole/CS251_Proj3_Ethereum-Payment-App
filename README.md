# Ethereum Payment App (CS251 Project 3)

## Overview

This project is inspired by the Splitwise model, which implements a decentralized app on the Ethereum blockchain. It allows users to track and manage debts using smart contracts written in Solidity and deployed on the local Hardhat blockchain.

The app prevents cycles in debt relationships using Breadth-First Search.

## Features

**Add IOUs**: Users can add debts to others on the blockchain.  
**Lookup Debts**: Retrieve the amount owed between two users.  
**Debt Cycle Resolution**: Uses **BFS** to detect cycles and minimize circular debts.  
**Transaction History**: Retrieves past IOU transactions.  
**Gas Optimization**: Reduces costs through efficient Solidity coding.  

## Technologies Used

- **Solidity** (Smart Contract Development)
- **Hardhat** (Local Ethereum Blockchain for Testing)
- **Ethers.js** (Interacting with Smart Contracts)
- **JavaScript, HTML, CSS** (Frontend)
- **Git & GitHub** (Version Control)

---

## **Installation & Setup**

### **1. Prerequisites**
Make sure you have the following installed:
- **Node.js** (Download: [https://nodejs.org/](https://nodejs.org/))
- **Hardhat** (For local Ethereum blockchain)
- **Git** (For version control)

### **2. Clone the Repository**
```bash
git clone https://github.com/Dynamitemole/CS251_Proj3_Ethereum-Payment-App.git
cd CS251_Proj3_Ethereum-Payment-App
```

### **3. Install Dependencies**
```bash
npm install
```

### **4. Start Hardhat Local Blockchain**
open cmd and cd into the project directory and run:
```bash
npx hardhat node
```
This runs a local Ethereum network where smart contracts can be deployed and tested.

### **5. Deploy Smart Contract**
open another cmd and cd into the project directory and run:
```bash
npx hardhat run scripts/deploy.js --network localhost
```
The contract address will be printed in the terminal. Update script.js with this address.

### **6. Run the Frontend**
Simply open index.html in a browser.

---

## **Testing & Results**
I passed the sanity tests to verify core functionality:

✅ Passed Tests (21/21)

***Test Output:***
```scss
TEST Simplest possible test: only runs one add_IOU; uses all client functions
getUsers() initially empty: SUCCESS
getTotalOwed(0) initially empty: SUCCESS
lookup(0,1) initially 0: SUCCESS
getUsers() now length 2: SUCCESS
getTotalOwed(0) now 10: SUCCESS
lookup(0,1) now 10: SUCCESS
getLastActive(0) works: SUCCESS
Final Score: 21/21
```

### **Gas usage optimization**
One of the key improvements in this project was the reduction of gas usage for both contract deployment and function execution. Initially, deploying the contract required approximately 400,000 gas, but after optimizing storage and computation, this was reduced to 311,163 gas.

Additionally, function calls to add_IOU initially consumed around 94,000 gas, but were reduced to 44,772 gas through efficient contract design, such as minimizing storage writes and optimizing debt cycle resolution.

These improvements make the contract more cost-effective for users, reducing Ethereum transaction fees and ensuring scalability.
