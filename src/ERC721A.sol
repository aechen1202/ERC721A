pragma solidity ^0.8.4;
import "ERC721A/ERC721A.sol";


contract erc721aNft is ERC721A{
    constructor() ERC721A("ERC721A_NFT", "NFT") {}

    function mint(address to, uint256 quantity) public {
        _mint(to, quantity);
    }
}

