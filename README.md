# 🧩 NFT Domain Leasing in a Blockchain-Based Secure DNS Framework

A decentralized Domain Name System (DNS) built on the Ethereum blockchain, where domain ownership is represented as ERC-721 NFTs and domains can be securely leased without transferring ownership.

---

## 📌 Project Overview

Traditional DNS systems are centralized and vulnerable to spoofing, censorship, cache poisoning, and single points of failure. This project proposes a blockchain-based secure DNS framework that leverages Ethereum smart contracts and NFTs to provide decentralized, immutable, and verifiable domain ownership with time-bound leasing capabilities.

Each domain is minted as a Non-Fungible Token (NFT), allowing owners to lease domains temporarily while retaining full ownership control. DNS records are mapped using IPFS CIDs, ensuring decentralized and tamper-resistant storage.

---

## ✨ Key Features

- Decentralized DNS using Ethereum blockchain  
- NFT-based domain ownership (ERC-721 standard)  
- Time-bound domain leasing without ownership transfer  
- Smart contract–enforced access control  
- IPFS-based DNS record storage  
- Deployed and tested on Ethereum Sepolia Testnet  
- Python-based local blockchain and DNS simulation  

---

## 🏗️ Technology Stack

- **Blockchain:** Ethereum (Sepolia Testnet, Ganache)  
- **Smart Contracts:** Solidity, OpenZeppelin ERC-721  
- **Web3 Tools:** Remix IDE, MetaMask, Web3.py  
- **Storage:** IPFS (Content Identifiers)  
- **Programming:** Solidity, Python  
- **Local Simulation:** Python + SQLite  

---

## ⚙️ Smart Contract Functionalities

- `registerDomain()` – Registers a domain and mints an NFT  
- `resolveDomain()` – Resolves domain name to IPFS CID  
- `leaseDomain()` – Leases a domain for a fixed duration  
- `endLease()` – Terminates an active lease  
- `updateDNSRecord()` – Updates domain DNS/IPFS record  
- `ownerOf()` – Retrieves domain owner (ERC-721)  

---

## 🧪 Testing and Deployment

- Smart contracts compiled and tested using Remix IDE  
- Deployed on Ethereum Sepolia Testnet  
- Contract interactions verified via MetaMask  
- Gas consumption analyzed and compared with ENS  
- Security checks validated against malicious inputs  

---

## 🐍 Local Blockchain Simulation

A Python-based local blockchain simulation was developed to demonstrate decentralized DNS operations offline. The simulation includes block creation, lease tracking, ownership verification, and DNS resolution using SQLite for persistent storage.

---

## 🚀 Future Enhancements

- Web-based frontend for domain management  
- NFT domain marketplace and bidding system  
- Integration with decentralized identity (DID) protocols  
- Automated testing and security audits  
- Advanced lease expiration and reputation mechanisms  

---

## 📄 Publication

**NFT Domain Leasing in a Blockchain-Based Secure DNS Framework**  
Proceedings of the 9th International Conference on I-SMAC (2025), IEEE

---

## 👩‍💻 Authors

- Devaprabha Biju S.  
- Mydhily Sankar  
- **Reba Susan Abraham**  
- Raunak Dev  
- Niranjana S.  
- Krishnapriya P S  

Department of Electrical and Electronics Engineering / Computer Science and Engineering  
Amrita Vishwa Vidyapeetham, Amritapuri, India

---

## 📜 License

This project is intended for academic and research purposes. License can be added as required.
