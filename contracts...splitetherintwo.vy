#Split Ether In Two

@external
@payable
def splitTokenInTwo(_to : address, _amount : uint256) -> bool:
    self.balanceOf[msg.sender] -= _amount
    self.balanceOf[_to] += _amount
    return True

@external
@payable
def splitEtherInTwo(_to : address) -> bool:
    uint256 amount = msg.value
    send(_to, amount / 2)
    send(msg.sender, amount / 2)
    return True