//SPDX-License-Identifier: MIT

pragma solidity ^0.7.0;

import '4.SafeMath.sol';

contract Token {
  using SafeMath for unit256;
  
  mapping (address => unit256) private _balances;
  
  unit256 private _totalSupply;
  
  string private _name;
  string private _symbol;
  unit8 private decimals;
  address public _dono;
  
  event Transfer(address indexed from, address indexed to, unit256 value);
  event Approval(address indexed _owner, address indexed _spender, unit256 _value);
  
  contructor(string memory name, string memory symbol) {
    _name = name;
    _symbol = symbol;
    _decimals = 2;
    _dono = msg.sender; //0xa2a45C7aC4190eAE5d443eE5b07C7cFc1cDC9BD0
  
  }
  
  modifier apenasDono() {
    require( msg.sender == _dono, "Esse endereco nao e o dono");
    _;
  }
  
  function name() public view returns (string memory) {
    return _name;
  }
  
    function symbol() public view returns (string memory) {
    return _symbol;
  }
  
    function decimals() public view returns (unit8) {
    return _decimals;
  }
  
    function totalSupply() public view returns (unit256) {
    return _totalSupply;
  }
  
    function balanceOf() public view returns (unit256) {
    return _balances[account];
  }

    function transferfrom(addresss sender, address recipient, unit256 amount) public returns (bool success) {
      require(sender != address(0), "ERC20: transferencia do endereco zero nao e permitida");
      require(recipient != address(0), "ERC20: transferencia do endereco zero nao e permitida");
   
      _balances[sender] = _balances[sender].sub(amount, "ERC20: transferencia excede o saldo");
      _balances[recipient] = _balances[recipient].add(amount);
      
      emit Transfer(sender, recipient, amount);
      return true;
      
   }











}


