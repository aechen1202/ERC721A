// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {erc721aNft} from "../src/ERC721A.sol";
import {erc721Nft} from "../src/ERC721.sol";

contract CounterTest is Test {
    erc721aNft public _erc721aNft;
    erc721Nft public _erc721Nft;
    address public user1 = makeAddr("user1");
    address public user2 = makeAddr("user2");

    function setUp() public {
        _erc721aNft = new erc721aNft();
        _erc721Nft = new erc721Nft();
    }

    function test_erc721A() public {
        vm.startPrank(user1);
        
        _erc721aNft.mint(user1, 10);

         _erc721aNft.approve(user2, 0);
        
        _erc721aNft.transferFrom(user1, user2, 0);
    }

    function test_erc721() public {
        vm.startPrank(user1);

        _erc721Nft.mint(user1, 10);

        _erc721Nft.approve(user2, 0);
        
        _erc721Nft.transferFrom(user1, user2, 0);
    }
}
