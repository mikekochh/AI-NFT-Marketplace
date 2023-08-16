// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {ERC721URIStorage, ERC721} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFT is ERC721URIStorage {
    uint256 public s_tokenCount;

    constructor() ERC721("AI NFT", "AI") {

    }

    function mint(string memory _tokenURI) external returns(uint256) {
        s_tokenCount++;
        _safeMint(msg.sender, s_tokenCount);
        _setTokenURI(s_tokenCount, _tokenURI);
        return s_tokenCount;
        
    }
}