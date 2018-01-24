pragma solidity 0.4.19;

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


contract d20 is SuperOwned {
string public name;
string public link;
address public location;

uint[] public sets;
address[] public slots;

address public master;
address public brain;
address public body;

    modifier onlyMaster { 
        if (msg.sender != master) revert();
        _;
    }

function d20(string _name,address _master,uint _sex,uint _class,uint _alignment,uint _race){
name=_name;
master=_master;
sets.push(_race);
sets.push(_sex);
sets.push(_class);
sets.push(_alignment);

sets.push(block.number);
sets.push(0);

//modifiers
sets.push(10000); //strength
sets.push(10000); //constitution
sets.push(10000);//dexterity
sets.push(10000);//Intelligence
sets.push(10000);//wisdom
sets.push(10000);//charisma

sets.push(0); //experience
sets.push(0); //weight
sets.push(0); //death
sets.push(0); //price
sets.push(10); //slots

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

function setMaster(address _master)onlyMaster{
master=_master;
}


function setBrain(address a)onlyOwner{
brain=a;
} 

function setBody(address a)onlyOwner{
body=a;
}


}
