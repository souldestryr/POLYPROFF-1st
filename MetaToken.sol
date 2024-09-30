// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MetaToken is ERC721, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    constructor() ERC721("Spiderman", "kh") {}

    string[] uri = [
        "https://scarlet-casual-squid-274.mypinata.cloud/ipfs/QmR5cwNjfy42bmi1C3fMzajrsHF8ZXJZNvUacTQ5msN6Td",
        "https://scarlet-casual-squid-274.mypinata.cloud/ipfs/QmWP5VGwUDeXE1HLHwG2zpVFpUHS1MB59oJadVFLxZBDM6",
        "https://scarlet-casual-squid-274.mypinata.cloud/ipfs/QmVo1UYTFbz95Jkz6HNw3SbFEWdDRyEcJH3MsmAiSDZzHM",
        "https://scarlet-casual-squid-274.mypinata.cloud/ipfs/QmVs84Dr8rmtFEzqpxBcsgJ2X8GTUHfu1A9bp8ZRGVy7sE",
        "https://scarlet-casual-squid-274.mypinata.cloud/ipfs/QmeRJmQzoqtmYLkhpRKbFZLQiwFvhfxeqx2PKRKwGvsJbs"
    ];

    string[] prompt = [
        "AI taking over the world.",
        "Warrior Fighting with the titan",
        "Anime Girl in a Saree",
        "Sad Guy with a rose in his hand",
        "A fish on a boat"
    ];

    function mint(address to) public onlyOwner returns (uint256) {
        _tokenIds.increment();

        uint256 tokenId = _tokenIds.current();

        _safeMint(to, tokenId);
        return tokenId;
    }

    function promptDescription(
        uint256 tokenID
    ) external view returns (string memory) {
        return prompt[tokenID];
    }
}