---
layout: default
title: AlkemiOracle
---

# AlkemiOracle.sol

View Source: [contracts/oracles/AlkemiOracle.sol](../contracts/oracles/AlkemiOracle.sol)

**{{ContractName}}**

**Enums**
### Vote

```js
enum Vote {
 YES,
 NO
}
```

## Structs
### SettlementVoting

```js
struct SettlementVoting {
 address node,
 uint256 settlementId,
 bytes32 bookHash,
 uint256 minimumVotes,
 uint256 yesVotes,
 uint256 noVotes,
 bool isSettled,
 address[] exchangesAddresses,
 address[] surplusTokensAddresses,
 address[] deficitTokensAddresses,
 uint128[] surplus,
 uint128[] deficit
}
```

## Contract Members
**Constants & Variables**

```js
mapping(uint256 => address[]) public settlementBannedNode;
mapping(uint256 => bytes32) public settlementBookHash;
mapping(bytes32 => struct AlkemiOracle.SettlementVoting) public settlementVoting;
mapping(bytes32 => mapping(address => bool)) public accountingVotedNode;
address public oracleGuard;
address public alkemiNetwork;

```

**Events**

```js
event Settlement(uint256 indexed settlementId, bytes32  bookHash);
event RequestAccountingBook(uint256 indexed settlementId);
event RequestVote(uint256 indexed settlementId, bytes32  bookHash);
event RequestStopTrade(uint256 indexed settlementId);
event RequestContinueTrade(uint256  settlementId, uint256  settlementTimeStamp);
```

## Functions

- [(address _oracleGuard, address _alkemiNetwork)](#)
- [getSettlementId()](#getsettlementid)
- [submitBook(address[] exchangesAddresses, address[] surplusTokensAddresses, address[] deficitTokensAddresses, uint128[] surplus, uint128[] deficit, uint256 _settlementId, bytes32 _bookHash)](#submitbook)
- [settlementVote(uint256 _settlementId, bytes32 _bookHash, uint8 _vote)](#settlementvote)
- [requestNodesVoting(uint256 _settlementId, bytes32 _bookHash)](#requestnodesvoting)
- [requestAccountingBook(uint256 _settlementId)](#requestaccountingbook)
- [restartContainersTrading(uint256 settlementId, uint256 settlementTime)](#restartcontainerstrading)
- [stopContainersTrading(uint256 settlementId)](#stopcontainerstrading)

### 

```js
function (address _oracleGuard, address _alkemiNetwork) public nonpayable
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| _oracleGuard | address |  | 
| _alkemiNetwork | address |  | 

### getSettlementId

```js
function getSettlementId() external view
returns(uint256)
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|

### submitBook

submit book hash and settlement details to vote for

```js
function submitBook(address[] exchangesAddresses, address[] surplusTokensAddresses, address[] deficitTokensAddresses, uint128[] surplus, uint128[] deficit, uint256 _settlementId, bytes32 _bookHash) external nonpayable
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| exchangesAddresses | address[] | list of exchanges addresses | 
| surplusTokensAddresses | address[] | list of tokens for surplus | 
| deficitTokensAddresses | address[] | list of tokens for deficit | 
| surplus | uint128[] | TokensAddresses list of tokens for surplus | 
| deficit | uint128[] | TokensAddresses list of tokens for deficit | 
| _settlementId | uint256 | book settlement id | 
| _bookHash | bytes32 | book hash | 

### settlementVote

```js
function settlementVote(uint256 _settlementId, bytes32 _bookHash, uint8 _vote) external nonpayable
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| _settlementId | uint256 |  | 
| _bookHash | bytes32 |  | 
| _vote | uint8 |  | 

### requestNodesVoting

```js
function requestNodesVoting(uint256 _settlementId, bytes32 _bookHash) internal nonpayable
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| _settlementId | uint256 |  | 
| _bookHash | bytes32 |  | 

### requestAccountingBook

```js
function requestAccountingBook(uint256 _settlementId) internal nonpayable
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| _settlementId | uint256 |  | 

### restartContainersTrading

```js
function restartContainersTrading(uint256 settlementId, uint256 settlementTime) external nonpayable
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| settlementId | uint256 |  | 
| settlementTime | uint256 |  | 

### stopContainersTrading

```js
function stopContainersTrading(uint256 settlementId) internal nonpayable
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| settlementId | uint256 |  | 

