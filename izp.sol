// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract IZPToken is ERC20, Ownable {
    uint256 public constant MAX_SUPPLY = 5_000_000 * 10**18;

    event TokensBurned(uint256 amount);
    event BuybackExecuted(uint256 amount);

    constructor() ERC20("IngressoZapp Token", "IZP") Ownable(msg.sender) {
        _mint(msg.sender, MAX_SUPPLY);
    }

    /// @notice Queima tokens mantidos pelo contrato
    function burn(uint256 amount) external onlyOwner {
        _burn(address(this), amount);
        emit TokensBurned(amount);
    }

    /// @notice Recompra e queima tokens disponíveis no saldo do contrato
    function simulateBuyback(uint256 amount) external onlyOwner {
        require(balanceOf(address(this)) >= amount, "Saldo insuficiente no contrato");
        _burn(address(this), amount);
        emit BuybackExecuted(amount);
    }
}
