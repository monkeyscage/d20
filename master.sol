contract PRETORIVS{
address public owner;

function PRETORIVS(){
owner=msg.sender;
}

function setOwner(address a)onlyOwner{
owner=a;
}

function setPlayer(address _player,uint _set,uint _value)onlyPermissioned{

}

function setPlayerSlot(address _player,uint _slot,address _item)onlyPermissioned{

}

function setPlayerOwner(address _player,address _owner)onlyPermissioned{

}

}
