🧩 NFT Domain Leasing in a Blockchain-Based Secure DNS Framework

A decentralized Domain Name System (DNS) built on Ethereum blockchain, where domain ownership is represented as NFTs (ERC-721) and domains can be securely leased without transferring ownership.

This project addresses the security, censorship, and single-point-of-failure issues of traditional DNS by leveraging blockchain, smart contracts, Web3, and IPFS.

📌 Project Overview

Traditional DNS systems are centralized and vulnerable to attacks such as spoofing, cache poisoning, censorship, and DDoS. This project proposes a Blockchain-Based Secure DNS that:

Registers domains as NFTs

Ensures immutable and verifiable ownership

Enables time-bound domain leasing

Supports decentralized domain resolution

Eliminates reliance on centralized authorities

Domains are minted as NFTs using ERC-721 smart contracts, allowing owners to lease domains temporarily while retaining full ownership control.

✨ Key Features

🔐 Decentralized DNS using Ethereum blockchain

🖼️ NFT-based Domain Ownership (ERC-721)

⏳ Time-bound Domain Leasing without ownership transfer

📄 IPFS-based DNS Records (CID mapping)

🧠 Smart Contract–enforced Access Control

🧪 Deployed and Tested on Sepolia Testnet

🐍 Python-based Local Blockchain & DNS Simulation

🏗️ System Architecture

Tech Stack Overview:

Blockchain: Ethereum (Sepolia Testnet / Ganache)

Smart Contracts: Solidity (ERC-721, OpenZeppelin)

Web3 Interaction: Web3.py, MetaMask

Development Tools: Remix IDE, Jupyter Notebook

Decentralized Storage: IPFS (CID-based records)

Local Simulation: Python + SQLite

📂 Repository Structure (Suggested)
├── contracts/
│   └── DomainNFT.sol          # ERC-721 smart contract
├── scripts/
│   └── web3_interaction.py    # Python Web3 interaction
├── simulation/
│   ├── blockchain.py          # Local blockchain logic
│   └── dns_simulation.py      # Offline DNS simulation
├── docs/
│   └── architecture_diagrams/
├── README.md

⚙️ Smart Contract Functionalities
Function	Description
registerDomain()	Registers a domain and mints an NFT
resolveDomain()	Resolves domain to IPFS CID
leaseDomain()	Leases a domain for a fixed duration
endLease()	Terminates an active lease
updateDNSRecord()	Updates DNS/IPFS record
ownerOf()	Retrieves NFT owner
🧪 Testing & Deployment

Smart contracts compiled and tested using Remix IDE

Deployed on Ethereum Sepolia Testnet

Gas consumption analyzed and compared with ENS

Malicious input handling validated (unauthorized access, invalid lease durations)

Python scripts used to interact with contracts via Web3.py

📊 Experimental Highlights

Successful NFT minting and domain registration

Secure lease enforcement with automatic expiry

Low-cost DNS updates compared to ENS

Immutable ownership verification via ERC-721 standard

🚀 Future Enhancements

🌐 Web-based frontend (React + Web3)

🏷️ Domain marketplace and bidding system

🆔 Integration with Decentralized Identity (DID)

🧪 Automated testing and fuzz testing

📈 Reputation-based leasing validation

📦 IPFS + ENS interoperability

📄 Publication

NFT Domain Leasing in a Blockchain-Based Secure DNS Framework
Proceedings of the 9th International Conference on I-SMAC (2025), IEEE

Authors:
Devaprabha Biju S., Mydhily Sankar, Reba Susan Abraham, Raunak Dev, Niranjana S., Krishnapriya P S

👩‍💻 Author

Reba Susan Abraham
B.Tech Electrical & Computer Engineering
Amrita Vishwa Vidyapeetham
📧 rebasusan29@gmail.com
