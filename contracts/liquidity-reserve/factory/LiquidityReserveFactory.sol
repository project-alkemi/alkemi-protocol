pragma solidity ^0.5.0;

import { LiquidityReserve } from "../LiquidityReserve.sol";

/**
 * @title LiquidityReserveFactory
 * @dev This Factory creates a Liquidity Reserve
 */
contract LiquidityReserveFactory {

  /**
   * @dev Creates and initialises a new LiquidityReserve
   * @param _liquidityProvider Lequidity provider address
   * @param _liquidityReserveManager Lequidity Reserve Manager contract address
   * @param _settlementContract Settlement contract address
   * @param _beneficiary earnings beneficiary (address(0) if the earnings goes to the current reserve address)
   * @param _lockingPeriod funds locking period
   * @param _lockingPrice release funds when hitting this price
   * @param _lockingPricePosition locking price position
   * @return Address of new Liquidity Reserve
   */
  function _createLiquidityReserve(
    address _liquidityProvider,
    address _liquidityReserveManager,
    address _settlementContract,
    address _beneficiary,
    uint256 _lockingPeriod,
    uint256 _lockingPrice,
    uint8 _lockingPricePosition
  ) internal returns (address) {
    return address(
      new LiquidityReserve(
        _liquidityProvider,
        _liquidityReserveManager,
        _settlementContract,
        _beneficiary,
        _lockingPeriod,
        _lockingPrice,
        _lockingPricePosition
      )
    );
  }
}