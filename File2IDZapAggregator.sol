// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

import "@openzeppelin/contracts/interfaces/IERC20.sol";

import "./ISwapHandler.sol";

interface IDZapAggregator is ISwapHandler {
    /* ========= EVENTS ========= */

    event TokensRescued(address indexed to, address indexed token, uint256 amount);

    /* ========= RESTRICTED ========= */

    function rescueFunds(
        IERC20 token_,
        address to_,
        uint256 amount_
    ) external;
}