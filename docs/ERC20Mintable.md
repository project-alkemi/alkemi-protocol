# ERC20Mintable.sol

View Source: [@openzeppelin/contracts/token/ERC20/ERC20Mintable.sol](../@openzeppelin/contracts/token/ERC20/ERC20Mintable.sol)

**↗ Extends: [ERC20](ERC20.md), [MinterRole](MinterRole.md)**
**↘ Derived Contracts: [Token](Token.md), [TokenMock](TokenMock.md)**

**ERC20Mintable**

Extension of {ERC20} that adds a set of accounts with the {MinterRole},
which have permission to mint (create) new tokens as they see fit.
 * At construction, the deployer of the contract is the only minter.

## Functions

- [mint(address account, uint256 amount)](#mint)

### mint

See {ERC20-_mint}.
     * Requirements:
     * - the caller must have the {MinterRole}.

```js
function mint(address account, uint256 amount) public nonpayable onlyMinter 
returns(bool)
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| account | address |  | 
| amount | uint256 |  | 

## Contracts

* [Address](Address.md)
* [AlkemiSettlement](AlkemiSettlement.md)
* [AlkemiSettlementMock](AlkemiSettlementMock.md)
* [Context](Context.md)
* [ERC20](ERC20.md)
* [ERC20Mintable](ERC20Mintable.md)
* [IAlkemiSettlement](IAlkemiSettlement.md)
* [IAlkemiToken](IAlkemiToken.md)
* [IERC20](IERC20.md)
* [ILiquidityReserve](ILiquidityReserve.md)
* [ILiquidityReserveManager](ILiquidityReserveManager.md)
* [IOracle](IOracle.md)
* [IOracleGuard](IOracleGuard.md)
* [LiquidityReserve](LiquidityReserve.md)
* [LiquidityReserveFactory](LiquidityReserveFactory.md)
* [LiquidityReserveManager](LiquidityReserveManager.md)
* [LiquidityReserveState](LiquidityReserveState.md)
* [Migrations](Migrations.md)
* [MinterRole](MinterRole.md)
* [Oracle](Oracle.md)
* [OracleGuard](OracleGuard.md)
* [Roles](Roles.md)
* [SafeERC20](SafeERC20.md)
* [SafeMath](SafeMath.md)
* [Token](Token.md)
* [TokenMock](TokenMock.md)