// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {erc721aNft} from "../src/ERC721A.sol";
import {erc721Nft} from "../src/ERC721.sol";

contract ERC721Test is Test {
    erc721aNft public _erc721aNft;
    erc721Nft public _erc721Nft;
    address public user1 = makeAddr("user1");
    address public user2 = makeAddr("user2");

    function setUp() public {
        _erc721aNft = new erc721aNft();
        _erc721Nft = new erc721Nft();
    }

    //案例1:mint 1 個
	function test_erc721A_Mint1Token() public {
        vm.startPrank(user1);
        _erc721aNft.mint(user1, 1);
        _erc721Nft.mint(user1, 1);
    }

    //案例2: mint 100 個
	function test_erc721A_Mint100Token() public {
        vm.startPrank(user1);
        _erc721aNft.mint(user1, 100);
        _erc721Nft.mint(user1, 100);
    }

    //案例3: mint 10000 個
    function test_erc721A_Mint10000Token() public {
        vm.startPrank(user1);
        _erc721aNft.mint(user1, 10000);
        _erc721Nft.mint(user1, 10000);
    }

    //案例4:mint 10, approve token id =0
    function test_erc721A_approve0() public {
        vm.startPrank(user1);
        
        _erc721aNft.mint(user1, 10);

         _erc721aNft.approve(user2, 0);
    }

    //案例4:mint 10, approve token id =0
    function test_erc721_approve0() public {
        vm.startPrank(user1);

        _erc721Nft.mint(user1, 10);

        _erc721Nft.approve(user2, 0);
        
    }

    //案例5:mint 10, approve token id =9
    function test_erc721A_approve9() public {
        vm.startPrank(user1);
        
        _erc721aNft.mint(user1, 10);

         _erc721aNft.approve(user2, 9);
    }

    //案例5:mint 10, approve token id =9
    function test_erc721_approve9() public {
        vm.startPrank(user1);

        _erc721Nft.mint(user1, 10);

        _erc721Nft.approve(user2, 9);
        
    }

    //案例6: approve all
    function test_erc721A_approveAll() public {
        vm.startPrank(user1);
        _erc721aNft.setApprovalForAll(user2, true);
    }

    //案例6: approve all
    function test_erc721_approveAll() public {
        vm.startPrank(user1);
        _erc721Nft.setApprovalForAll(user2, true);
        
    }

    //案例7: mint 10, transfer  token id =0
    function test_erc721A_transfer0() public {
        vm.startPrank(user1);
        
        _erc721aNft.mint(user1, 10);
        
        _erc721aNft.transferFrom(user1, user2, 0);
    }

    //案例7: mint 10, transfer  token id =0
    function test_erc721_transfer0() public {
        vm.startPrank(user1);

        _erc721Nft.mint(user1, 10);
        
        _erc721Nft.transferFrom(user1, user2, 0);
    }

    //案例8: mint 10, transfer  token id =9
    function test_erc721A_transfer9() public {
        vm.startPrank(user1);
        
        _erc721aNft.mint(user1, 10);
        
        _erc721aNft.transferFrom(user1, user2, 9);
    }

    //案例8: mint 10, transfer  token id =9
    function test_erc721_transfer9() public {
        vm.startPrank(user1);

        _erc721Nft.mint(user1, 10);
        
        _erc721Nft.transferFrom(user1, user2, 9);
    }

    //案例9: mint 11, transfer  token id =9
    function test_erc721A_mint11_transfer9() public {
        vm.startPrank(user1);
        
        _erc721aNft.mint(user1, 11);
        
        _erc721aNft.transferFrom(user1, user2, 9);
    }

    //案例9: mint 11, transfer  token id =9
    function test_erc721_mint11_transfer9() public {
        vm.startPrank(user1);

        _erc721Nft.mint(user1, 11);
        
        _erc721Nft.transferFrom(user1, user2, 9);
    }

}
