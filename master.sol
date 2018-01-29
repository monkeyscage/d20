contract PRETORIVS{
address public owner;

function PRETORIVS(){
owner=msg.sender;
}

function setOwner(address a)onlyOwner{
owner=a;
}

}
