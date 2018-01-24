pragma solidity 0.4.11;

contract SuperOwned{

address public owner;
address public superowner;

    function SuperOwned() {
        owner = msg.sender;
    }

    modifier onlyOwner { //superowner is more important than owner
        if(superowner!=address(0)){
        if (msg.sender != superowner) revert();
        }else{
        if (msg.sender != owner) revert();
        }
        _;
    }

    //you can transfer ownership only if NO superowner is declared
    function transferOwnership(address newOwner) onlyOwner returns(bool){
        owner = newOwner;
        return true;
    }
    
    //you can set a superowner only if NO superowner is already declared
    function setSuperOwner(address newSuperOwner) onlyOwner {
        superowner = newSuperOwner;    //can be an address or 0x0
    }
    

}


contract player is SuperOwned {
string public name;
string public link;
address public location;

uint[] public sets;
address[] public slots;

address extension;
Extension ext;

function d20(string _name,uint _sex,){
name=_name;
sets[0]=_race;
sets[1]=_sex;
sets[2]=_class;
sets[3]=_alignment;

sets[4]=block.number;
sets[5]=_health;

//modifiers
sets[6]=10000; //strength
sets[7]=10000; //constitution
sets[8]=10000;//dexterity
sets[9]=10000;//Intelligence
sets[10]=10000;//wisdom
sets[11]=10000;//charisma

sets[12]=0; //experience
sets13]=0; //weight
sets[14]=0; //death
sets[15]=0; //price
}
function init(uint stre,
uint dext,
uint cons,
uint intel,
uint wisd,
uint char){
sets[16]=stre; //strength
sets[17]=dext; //constitution
sets[18]=cons;//dexterity
sets[19]=intel;//Intelligence
sets[20]=wisd;//wisdom
sets[21]=char;//charisma
}

function setPrice(uint _price)onlyOwner{
sets[15]=_price;
}

function read(uint _i)constant returns(uint){
return sets[_i];
}

function setExtension(address a)onlyOwner{
extension=a;
ext=Extension(a);
}


function interact(uint type){
ext.interact(msg.sender,type);
}

function attack(address player){
var(uint exp)=pretorivs.attack(player,strength);
if(exp>0)experience+=exp;
if(heal>0)health-=heal;
}

function defend(uint str)onlyPretorivs returns(uint result){
uint temp=0;
if(str>strength)temp=1;
return temp;
}

function magicattack(){
ext.magicattack(msg.sender);
}


function resurrect(bool b){
if(msg.sender!owner){resurrecting=true}else{
if(!b){resurrecting=false;}else{
health=100;
}
}
}


function giveMagicItem(address item,address from,address to,uint index) onlyOwner{
if(from==this){
if(slot[i]==item){slot[i]=address(0);magic=Magic(item);magic.transferOwnership(to);}
}else{

}
}


function takeMagicItem(address item, uint inventory) onlyOwner{

}

function takeItem(address item, uint inventory) onlyOwner{
erc20=new Erc20(coin);
weight+=erc20.weight*amount;
}

function grab(address item,uint amount,uint weig) onlyOwner returns(true){
if(pretorivs.legit()){weight+=weig;gotItem(item);}
return true;
}

function giveItem(address item,address to,uint amount)returns(bool){
erc20x=new Erc20x(item);
if(!erc20x.giveItem(to,amount))revert();
player=new Player(to);
player.grab(item,amount);
weight-=erc20x.weight*amount;
return true;
}

function send(address coin,address to,uint i)constant returns(address){
erc20=new Erc20(coin);
if(!erc20.send(to,i))revert();
return true;
}

function suicide() onlyOwner{
selfdestruct(owner);
}

}
