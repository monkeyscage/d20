
pragma solidity ^0.4.15;


contract D20Factory {

     address public owner;
     D20NameSys public nameSys; 

    function D20Factory() {
      owner=msg.sender;
    }

    function setOwner(address a) {
       if(msg.sender!=owner)revert();
       owner=a;
    }

    function setList(address l){
        if(msg.sender!=owner)revert();
        nameSys=D20NameSys(l);
    }

    function createToken(uint256 _initialAmount, string _name, uint8 _decimals, string _symbol){
       
        D20Player newPlayer = new D20Player();
        if(!newPlayer.init(_initialAmount, _name, _decimals, _symbol,msg.sender,owner))revert(); 
        nameSys.add(address(newToken),msg.sender,_name,_symbol);
    }

}



contract D20NameSys{
address public owner;
mapping(address => address[]) public created;
mapping(address => bool) public permission;
mapping(string => bool) names;
mapping(string => address) namesAddress;;
mapping(address => string)public tokenNames;
mapping(address => address)public namesOwner;
address[] public list;
BasicStandardToken flood;


function D20NameSys(){
owner=msg.sender;
}

function setFloodToken(address _flood){
if(msg.sender!=owner)revert();
flood=BasicStandardToken(_flood);
}

function setD20(string _name,bool b){
if(msg.sender!=owner)revert();
names[_name]=b;
}

function deleteD20(address a){
if(msg.sender!=owner)revert();
tokenNames[a]="";
}

function add(address d20,address own,string _name) returns (bool){
if((!permission[msg.sender])||(names[_name]))revert();
created[own].push(address(d20));
list.push(address(d20));
names[_name]=true;
tokenNames[d20]=_name;
namesAddress[_name]=d20;
namesOwner[_name]=own;
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
return (tokenNames[_D20],namesOwner[_D20]);
}

function checkName(string _name)constant returns(bool){return names[_name];}

function findName(string _name)constant returns(address){return namesAddress[_name];}
}
