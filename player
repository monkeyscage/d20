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

contract inventory{
address[] public inventory;

function addMagicInventory(address item){
inventory.push(item);
magic = Magic(item);
magic.transferOwnership(this);
weight+=magic.weight;
}

function giveMagicInventory(uint index,address magic,address to){
magic = Magic(item);
magic.transferOwnership(to);
inventory[index]=inventory.length-1;
inventory.length-1=address(0);
weight-=magic.weight;
}

function steal(){

}

function readInventory(uint i)constant returns(address){
return inventory[i];
}
}

contract abilities{
uint public strength;
uint public dexterity;
uint public constitution;
uint public intelligence;
uint public wisdom;
uint public charisma;
}

contract player is SuperOwned is abilities{

uint public experience;
uint public health;
uint maxhealt;
address public inventory;
address[] public slots;
bool resurrecting;
uint weight;
address extension;
Extension ext;

function player(uint stre,
uint dext,
uint cons,
uint intel,
uint wisd,
uint char){
strength=stre;
dexterity=dext;
constitution=cons;
intelligence=intel;
wisdom=wisd;
charisma=char;
health=1;
maxhealth=1;
weight=1;
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
