pragma solidity ^0.8.4;
import "openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
contract erc721Nft is ERC721Enumerable{
    constructor() ERC721("ERC721_NFT", "NFT") {}
    uint256 index=0;

    function mint(address to, uint256 quantity) public returns(uint256) {
        for (uint256 i = 0; i < quantity; i++) {
            _mint(to, index);
             index++;
        }
        return index;
    }

}