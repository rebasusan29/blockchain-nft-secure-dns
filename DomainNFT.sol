// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DomainNFT is ERC721, Ownable {
    uint256 public tokenCounter;

    struct Lease {
        address lessee;
        uint256 startTime;
        uint256 endTime;
    }

    mapping(string => uint256) public domainToTokenId;
    mapping(uint256 => string) public tokenIdToDomain;
    mapping(uint256 => string) public dnsRecords;
    mapping(uint256 => Lease) public leases;

constructor() ERC721("DomainNFT", "DNFT") Ownable(msg.sender) {
    tokenCounter = 0;
}


    function registerDomain(string memory domain, string memory cid) external {
        require(domainToTokenId[domain] == 0, "Domain already registered");
        tokenCounter++;
        uint256 tokenId = tokenCounter;
        domainToTokenId[domain] = tokenId;
        tokenIdToDomain[tokenId] = domain;
        dnsRecords[tokenId] = cid;
        _mint(msg.sender, tokenId);
    }

    function leaseDomain(uint256 tokenId, address lessee, uint256 duration) external {
        require(ownerOf(tokenId) == msg.sender, "Not the owner");
        require(leases[tokenId].endTime < block.timestamp, "Domain is currently leased");
        leases[tokenId] = Lease(lessee, block.timestamp, block.timestamp + duration);
    }

    function endLease(uint256 tokenId) external {
        require(ownerOf(tokenId) == msg.sender, "Not the owner");
        leases[tokenId].endTime = block.timestamp;
    }

    function updateDNSRecord(uint256 tokenId, string memory cid) external {
        require(
            msg.sender == ownerOf(tokenId) ||
            (leases[tokenId].lessee == msg.sender && block.timestamp <= leases[tokenId].endTime),
            "Not authorized"
        );
        dnsRecords[tokenId] = cid;
    }

    function resolveDomain(string memory domain) external view returns (string memory) {
        return dnsRecords[domainToTokenId[domain]];
    }

    function getLessee(uint256 tokenId) external view returns (address) {
        if (leases[tokenId].endTime > block.timestamp) {
            return leases[tokenId].lessee;
        }
        return address(0);
    }

    function isLeased(uint256 tokenId) external view returns (bool) {
        return leases[tokenId].endTime > block.timestamp;
    }

    function getOwner(string memory domain) external view returns (address) {
        return ownerOf(domainToTokenId[domain]);
    }
}
