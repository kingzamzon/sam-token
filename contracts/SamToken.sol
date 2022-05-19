// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title A ER20 Token using OpenZeppelin
/// @author Samson Adesanoye
/// @notice This SamToken is an ERC20 Standard
/// @dev See Openzeppelin documentation on ERC20
contract SamToken is ERC20, Ownable {
    /// @notice on token creation send 10 token to sender
    constructor() ERC20("SamToken", "STK") {
        _mint(msg.sender, 10 * 10 ** decimals());
    }

    /// @notice create new token to add to totalSupply
    /// @dev only contract owner can mint token check openzeppelin documentation on Ownable
    /// @param to the address one want to mint to
    /// @param amount the amount in wei one want to send
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
