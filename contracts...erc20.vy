#ERC20

name: public(String[16])
symbol: public(String[8])
decimals: public(uint8)
totalSupply: public(uint256)
balanceOf: public(HashMap[address, uint256])
allowance: public(HashMap[address, HashMap[address, uint256]])

owner: address

@external
def __init__(_name: String[16], _symbol: String[8], _decimals: uint8, _totalSupply: uint256):
    self.name = _name
    self.symbol = _symbol
    self.decimals = _decimals
    self.totalSupply = _totalSupply
    self.balanceOf[msg.sender] = _totalSupply
    self.owner = msg.sender

@external
def transfer(_to: address, _amount: uint256) -> bool:
    self.balanceOf[msg.sender] -= _amount
    self.balanceOf[_to] += _amount
    return True

@external
def transferFrom(_from: address, _to: address, _value: uint256)
    self.balanceOf[_from] -= _value
    self.balanceOf[_to] += _value
    self.allowance[_from][msg.sender] -= _value
return True

@external
def approve(_sender: address, _value: uint256)
    self.allowance[msg.sender][_spender] = _value
return True

