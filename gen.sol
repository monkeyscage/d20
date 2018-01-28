
pragma solidity ^0.4.15;


contract D20Factory {

     address public owner;
     FloodNameSys public list; 

    function BasicStandardTokenFactory() {
      owner=msg.sender;
    }

    function setOwner(address a) {
       if(msg.sender!=owner)revert();
       owner=a;
    }

    function setList(address l){
        if(msg.sender!=owner)revert();
        list=FloodNameSys(l);
    }

    function createToken(uint256 _initialAmount, string _name, uint8 _decimals, string _symbol){
        //BasicStandardToken newToken = (new BasicStandardToken(_initialAmount, _name, _decimals, _symbol,msg.sender,owner));
        BasicStandardToken newToken = new BasicStandardToken();
        if(!newToken.init(_initialAmount, _name, _decimals, _symbol,msg.sender,owner))revert(); 
        list.add(address(newToken),msg.sender,_name,_symbol);
    }

}


//0xD9dCEE2A1EC08EaDcAb263B3e8cC53E7E0AF7A4E
contract D20NameSys{
address public owner;
mapping(address => address[]) public created;
mapping(address => bool) public permission;
mapping(string => bool) names;
mapping(string => bool) symbols;
mapping(string => address) namesAddress;
mapping(string => address) symbolsAddress;
mapping(address => string)public tokenNames;
mapping(address => string)public tokenSymbols;
mapping(address => bool)public gift;
address[] public list;
BasicStandardToken flood;


function FloodNameSys(){
owner=msg.sender;

}

function setFloodToken(address _flood){
if(msg.sender!=owner)revert();
flood=BasicStandardToken(_flood);
}

function setGift(address gen,bool b){
if(msg.sender!=owner)revert();
gift[gen]=b;
}

function setToken(string _name,string _symbol,bool b){
if(msg.sender!=owner)revert();
names[_name]=b;
symbols[_symbol]=b;
}

function deleteToken(address a){
if(msg.sender!=owner)revert();
tokenNames[a]="";
tokenSymbols[a]="";
}

function add(address token,address own,string _name,string _symbol) returns (bool){
if((!permission[msg.sender])||(names[_name])||(symbols[_symbol]))revert();
created[own].push(address(token));
list.push(address(token));
names[_name]=true;
tokenNames[token]=_name;
namesAddress[_name]=token;
symbols[_symbol]=true;
tokenSymbols[token]=_symbol;
symbolsAddress[_symbol]=token;
if(gift[msg.sender])flood.transfer(own,1);
return true;
}

function setPermission(address a,bool b){
if(msg.sender!=owner)revert();
permission[a]=b;
}

function getMyTokens(address own,uint i)constant returns(address,uint){
return (created[own][i],created[own].length);
}

function getTokenIndex(uint i)constant returns(address,uint){
return (list[i],list.length);
}

function getToken(address _token)constant returns(string,string){
return (tokenNames[_token],tokenSymbols[_token]);
}

function checkName(string _name)constant returns(bool){return names[_name];}

function checkSymbol(string _symbol)constant returns(bool){return symbols[_symbol];}

function findName(string _name)constant returns(address){return namesAddress[_name];}

function findSymbol(string _symbol)constant returns(address){return symbolsAddress[_symbol];}
}
