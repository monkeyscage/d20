
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

    function createToken(string _name,uint _sex,uint _class,uint _alignment,uint _race){
        D20Player newPlayer = new D20Player( _name,_master,_sex,_class,_alignment,_race); 
        nameSys.add(address(newPlayer),msg.sender,_name);
    }

}



contract D20NameSys{
address public owner;
mapping(address => address[]) public created;
mapping(address => bool) public permission;
mapping(string => bool) names;
mapping(string => address) namesAddress;
mapping(address => string)public tokenNames;
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
tokenNames[a]="";
}

function add(address d20,address own,string _name) returns (bool){
if((!permission[msg.sender])||(names[_name]))revert();
created[own].push(address(d20));
list.push(address(d20));
names[_name]=true;
tokenNames[d20]=_name;
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
return (tokenNames[_D20]);
}

function checkName(string _name)constant returns(bool){return names[_name];}

function findName(string _name)constant returns(address){return namesAddress[_name];}
}
