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

address public brain;
address public body;

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
sets[13]=0; //weight
sets[14]=0; //death
sets[15]=0; //price
sets[16]=10; //slots
}
function init(uint stre,
uint dext,
uint cons,
uint intel,
uint wisd,
uint char){
if(stre+dext+cons+intel+wisd+char>81)revert();
if((stre>16)||(dext>16)||(cons>16)||(intel>16)||(wisd>16)||(char>16))revert();
sets[17]=stre; //strength
sets[18]=dext; //constitution
sets[19]=cons;//dexterity
sets[20]=intel;//Intelligence
sets[21]=wisd;//wisdom
sets[22]=char;//charisma
}

function setPrice(uint _price)onlyOwner{
sets[15]=_price;
}

function setLink(string _link)onlyOwner{
link=_link; 
}

function set(uint _i,uint _j)onlyMaster{
sets[_i]=_j;
}

function  wear(uint _i,address _j)onlyMaster{
slots[_i]=_j;
}

function setLocation(address _location)onlyMaster{
location=_location;
}


function read(uint _i)constant returns(uint){
return sets[_i];
}

function readInventory(uint _i)constant returns(address){
return slots[_i];
}

function setBrain(address a)onlyOwner{
brain=a;
} 

function setBody(address a)onlyOwner{
body=a;
}


}
