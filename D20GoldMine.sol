
contract D20GoldMine{
address public owner;
D20Gld public D20gold;
uint public tokenPerETH=1000;
uint public linearCoeff=20000;

function D20GoldMine(){
owner=msg.sender;
}

 function setToken(address _token)public{
    if(msg.sender!=owner)revert();
    D20gold=_token;
 }
 
  function setOwner(address _owner)public{
    if(msg.sender!=owner)revert();
    owner=_owner;
 }

function()payable{
if(msg.value<0.001)revert();
//tokenPerETH-=(1000/2*msg.value/linearCoeff);
tokenPerETH-=msg.value/40;
if(!D20gold.transfer(msg.sender,msg.value*tokenPerETH))revert();
}

function transf(address a,uint val)public returns(bool){
if(!D20gold.transfer(a,val)revert();
return true;
}

}
