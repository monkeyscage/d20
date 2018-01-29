
pragma solidity ^0.4.15;


contract D20Factory {

     address public owner;
     D20NameSys public nameSys; 
     address public master;

    function D20Factory(address m) {
      owner=msg.sender;
      master=m;
    }

    function setOwner(address a) {
       if(msg.sender!=owner)revert();
       owner=a;
    }
    
    function setMaster(address a) {
       if(msg.sender!=owner)revert();
       master=a;
    }

    function setList(address l){
        if(msg.sender!=owner)revert();
        nameSys=D20NameSys(l);
    }

    function createD20Player(string _name,uint _sex,uint _class,uint _alignment,uint _race){
        D20Player newPlayer = new D20Player( _name,master,_sex,_class,_alignment,_race); 
        nameSys.add(address(newPlayer),msg.sender,_name);
    }

}



contract D20NameSys{
address public owner;
mapping(address => address[]) public created;
mapping(address => bool) public permission;
mapping(string => bool) names;
mapping(string => address) namesAddress;
mapping(address => string)public D20Names;
address[] public list;


function D20NameSys(){
owner=msg.sender;
}


function setD20(string _name,bool b){
if(msg.sender!=owner)revert();
names[_name]=b;
}

function deleteD20(address a){
if(msg.sender!=owner)revert();
D20Names[a]="";
}

function add(address d20,address own,string _name) returns (bool){
if((!permission[msg.sender])||(names[_name]))revert();
created[own].push(address(d20));
list.push(address(d20));
names[_name]=true;
D20Names[d20]=_name;
namesAddress[_name]=d20;
return true;
}

function setPermission(address a,bool b){
if(msg.sender!=owner)revert();
permission[a]=b;
}

function getMyD20(address own,uint i)constant returns(address,uint){
return (created[own][i],created[own].length);
}

function getD20Index(uint i)constant returns(address,uint){
return (list[i],list.length);
}

function getD20(address _D20)constant returns(string){
return (D20Names[_D20]);
}

function checkName(string _name)constant returns(bool){return names[_name];}

function findName(string _name)constant returns(address){return namesAddress[_name];}
}


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


contract D20Player is SuperOwned {
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

function D20Player(string _name,address _master,uint _sex,uint _class,uint _alignment,uint _race){
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

sets.length++; //experience
sets.length++; //weight
sets.length++; //death
sets.length++; //price
sets[sets.length++]=10; //slots

}

function init(uint stre,
uint dext,
uint cons,
uint intel,
uint wisd,
uint char)onlyOwner{
if((cons>0)||(stre+dext+cons+intel+wisd+char>81))revert();
if((stre>16)||(dext>16)||(cons>16)||(intel>16)||(wisd>16)||(char>16))revert();
sets[sets.length++]=stre; //strength
sets[sets.length++]=dext; //constitution
sets[sets.length++]=cons;//dexterity
sets[sets.length++]=intel;//Intelligence
sets[sets.length++]=wisd;//wisdom
sets[sets.length++]=char;//charisma
sets[5]=cons; //healt
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
