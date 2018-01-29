contract PRETORIVS{
address public owner;
address public master;
D20Player player;

function PRETORIVS(){
owner=msg.sender;
}

function setOwner(address a)onlyOwner{
owner=a;  
}

function setMaster(address a)onlyOwner{
master=a;
}

function setPlayer(address _player,uint _set,uint _value)onlyPermissioned{
player=D20Player(_player);
if(!player.set(_set,_value))revert();
}

function setPlayerMaster(address _player){
player=D20Player(_player);
if(player.owner!=msg.sender)revert();
if(!player.setMaster(master))revert();
}

function setPlayerSlot(address _player,uint _slot,address _item)onlyPermissioned{
player=D20Player(_player);
if(!player.wear(_slot,_item))revert();
}

function setPlayerOwner(address _player,address _owner)onlyPermissioned{

}

}
