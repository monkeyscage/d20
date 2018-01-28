0x7Bd3060A51AE2671c5361Ec4056D6ef7c31D3B3F

[ { "constant": true, "inputs": [ { "name": "_name", "type": "string" } ], "name": "checkName", "outputs": [ { "name": "", "type": "bool", "value": false } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [ { "name": "_name", "type": "string" }, { "name": "_symbol", "type": "string" }, { "name": "b", "type": "bool" } ], "name": "setToken", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [ { "name": "i", "type": "uint256" } ], "name": "getTokenIndex", "outputs": [ { "name": "", "type": "address", "value": "0x" }, { "name": "", "type": "uint256", "value": "0" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [ { "name": "_name", "type": "string" } ], "name": "findName", "outputs": [ { "name": "", "type": "address", "value": "0x0000000000000000000000000000000000000000" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [ { "name": "_token", "type": "address" } ], "name": "getToken", "outputs": [ { "name": "", "type": "string", "value": "" }, { "name": "", "type": "string", "value": "" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [ { "name": "", "type": "address" }, { "name": "", "type": "uint256" } ], "name": "created", "outputs": [ { "name": "", "type": "address", "value": "0x" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [ { "name": "", "type": "address" } ], "name": "permission", "outputs": [ { "name": "", "type": "bool", "value": false } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [ { "name": "_symbol", "type": "string" } ], "name": "checkSymbol", "outputs": [ { "name": "", "type": "bool", "value": false } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [ { "name": "", "type": "uint256" } ], "name": "list", "outputs": [ { "name": "", "type": "address", "value": "0x" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [], "name": "owner", "outputs": [ { "name": "", "type": "address", "value": "0xd3e72169bebffb0606543734b4a61b08546904e6" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [ { "name": "token", "type": "address" }, { "name": "own", "type": "address" }, { "name": "_name", "type": "string" }, { "name": "_symbol", "type": "string" } ], "name": "add", "outputs": [ { "name": "", "type": "bool" } ], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [ { "name": "_symbol", "type": "string" } ], "name": "findSymbol", "outputs": [ { "name": "", "type": "address", "value": "0x0000000000000000000000000000000000000000" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [ { "name": "", "type": "address" } ], "name": "tokenNames", "outputs": [ { "name": "", "type": "string", "value": "" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [ { "name": "gen", "type": "address" }, { "name": "b", "type": "bool" } ], "name": "setGift", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [ { "name": "", "type": "address" } ], "name": "gift", "outputs": [ { "name": "", "type": "bool", "value": false } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [ { "name": "own", "type": "address" }, { "name": "i", "type": "uint256" } ], "name": "getMyTokens", "outputs": [ { "name": "", "type": "address", "value": "0x" }, { "name": "", "type": "uint256", "value": "0" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [ { "name": "a", "type": "address" }, { "name": "b", "type": "bool" } ], "name": "setPermission", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [ { "name": "_flood", "type": "address" } ], "name": "setFloodToken", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [ { "name": "a", "type": "address" } ], "name": "deleteToken", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [ { "name": "", "type": "address" } ], "name": "tokenSymbols", "outputs": [ { "name": "", "type": "string", "value": "" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "inputs": [], "payable": false, "stateMutability": "nonpayable", "type": "constructor" } ]
[ { "constant": true, "inputs": [], "name": "list", "outputs": [ { "name": "", "type": "address", "value": "0x0000000000000000000000000000000000000000" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [ { "name": "a", "type": "address" } ], "name": "setOwner", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [], "name": "owner", "outputs": [ { "name": "", "type": "address", "value": "0xd3e72169bebffb0606543734b4a61b08546904e6" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [ { "name": "_initialAmount", "type": "uint256" }, { "name": "_name", "type": "string" }, { "name": "_decimals", "type": "uint8" }, { "name": "_symbol", "type": "string" } ], "name": "createToken", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [ { "name": "l", "type": "address" } ], "name": "setList", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "inputs": [], "payable": false, "stateMutability": "nonpayable", "type": "constructor" } ]

[ { "constant": true, "inputs": [], "name": "name", "outputs": [ { "name": "", "type": "string", "value": "trtt" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [ { "name": "_spender", "type": "address" }, { "name": "_value", "type": "uint256" } ], "name": "approve", "outputs": [ { "name": "success", "type": "bool" } ], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [ { "name": "_owner", "type": "address" } ], "name": "setOwner", "outputs": [ { "name": "success", "type": "bool" } ], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [], "name": "totalSupply", "outputs": [ { "name": "", "type": "uint256", "value": "100000" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [ { "name": "_from", "type": "address" }, { "name": "_to", "type": "address" }, { "name": "_value", "type": "uint256" } ], "name": "transferFrom", "outputs": [ { "name": "success", "type": "bool" } ], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [], "name": "decimals", "outputs": [ { "name": "", "type": "uint8", "value": "0" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [], "name": "burn", "outputs": [ { "name": "success", "type": "bool" } ], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [], "name": "version", "outputs": [ { "name": "", "type": "string", "value": "H0.1" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [ { "name": "_owner", "type": "address" } ], "name": "balanceOf", "outputs": [ { "name": "balance", "type": "uint256", "value": "0" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [], "name": "owner", "outputs": [ { "name": "", "type": "address", "value": "0xd3e72169bebffb0606543734b4a61b08546904e6" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [], "name": "symbol", "outputs": [ { "name": "", "type": "string", "value": "trt" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [ { "name": "_to", "type": "address" }, { "name": "_value", "type": "uint256" } ], "name": "transfer", "outputs": [ { "name": "success", "type": "bool" } ], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [], "name": "burnt", "outputs": [ { "name": "", "type": "bool", "value": false } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [ { "name": "_spender", "type": "address" }, { "name": "_value", "type": "uint256" }, { "name": "_extraData", "type": "bytes" } ], "name": "approveAndCall", "outputs": [ { "name": "success", "type": "bool" } ], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [ { "name": "_owner", "type": "address" }, { "name": "_spender", "type": "address" } ], "name": "allowance", "outputs": [ { "name": "remaining", "type": "uint256", "value": "0" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "inputs": [ { "name": "_initialAmount", "type": "uint256", "index": 0, "typeShort": "uint", "bits": "256", "displayName": "&thinsp;<span class=\"punctuation\">_</span>&thinsp;initial Amount", "template": "elements_input_uint", "value": "" }, { "name": "_tokenName", "type": "string", "index": 1, "typeShort": "string", "bits": "", "displayName": "&thinsp;<span class=\"punctuation\">_</span>&thinsp;token Name", "template": "elements_input_string", "value": "" }, { "name": "_decimalUnits", "type": "uint8", "index": 2, "typeShort": "uint", "bits": "8", "displayName": "&thinsp;<span class=\"punctuation\">_</span>&thinsp;decimal Units", "template": "elements_input_uint", "value": "" }, { "name": "_tokenSymbol", "type": "string", "index": 3, "typeShort": "string", "bits": "", "displayName": "&thinsp;<span class=\"punctuation\">_</span>&thinsp;token Symbol", "template": "elements_input_string", "value": "" }, { "name": "_owner", "type": "address", "index": 4, "typeShort": "address", "bits": "", "displayName": "&thinsp;<span class=\"punctuation\">_</span>&thinsp;owner", "template": "elements_input_address", "value": "0x6Cc02FdA65d61aaA349f2DA7B5bD7225442d2eE5" }, { "name": "_gen", "type": "address", "index": 5, "typeShort": "address", "bits": "", "displayName": "&thinsp;<span class=\"punctuation\">_</span>&thinsp;gen", "template": "elements_input_address", "value": "0x6Cc02FdA65d61aaA349f2DA7B5bD7225442d2eE5" } ], "payable": false, "stateMutability": "nonpayable", "type": "constructor" }, { "anonymous": false, "inputs": [ { "indexed": true, "name": "_from", "type": "address" }, { "indexed": true, "name": "_to", "type": "address" }, { "indexed": false, "name": "_value", "type": "uint256" } ], "name": "Transfer", "type": "event" }, { "anonymous": false, "inputs": [ { "indexed": true, "name": "_owner", "type": "address" }, { "indexed": true, "name": "_spender", "type": "address" }, { "indexed": false, "name": "_value", "type": "uint256" } ], "name": "Approval", "type": "event" } ]

pragma solidity ^0.4.15;


contract BasicStandardToken {

  


 uint256 constant MAX_UINT256 = 2**256 - 1;
    uint256 public totalSupply;

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    function transfer(address _to, uint256 _value) returns (bool success) {
        require(balances[msg.sender] >= _value);
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        Transfer(msg.sender, _to, _value);
        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
        uint256 allowance = allowed[_from][msg.sender];
        require(balances[_from] >= _value && allowance >= _value);
        balances[_to] += _value;
        balances[_from] -= _value;
        if (allowance < MAX_UINT256) {
            allowed[_from][msg.sender] -= _value;
        }
        Transfer(_from, _to, _value);
        return true;
    }

    function balanceOf(address _owner) constant returns (uint256 balance) {
        return balances[_owner];
    }

    function approve(address _spender, uint256 _value) returns (bool success) {
        allowed[msg.sender][_spender] = _value;
        Approval(msg.sender, _spender, _value);
        return true;
    }

    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
      return allowed[_owner][_spender];
    }

    mapping (address => uint256) balances;
    mapping (address => mapping (address => uint256)) allowed;

    string public name;                   //fancy name: eg Simon Bucks
    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    string public symbol;                 //An identifier: eg SBX
    string public version = 'BST0.1';       //human 0.1 standard. Just an arbitrary versioning scheme.
    address public owner;
    bool public burnt;
    public uint init;

    function BasicStandardToken(
        uint256 _initialAmount,
        string _tokenName,
        uint8 _decimalUnits,
        string _tokenSymbol,
        address _owner,
        address _gen
        ) {
        balances[_owner] = _initialAmount-((_initialAmount/1000)*5);               // Give the creator all initial tokens
        balances[_gen] = (_initialAmount/1000)*5;               // Give the creator all initial tokens
        totalSupply = _initialAmount;                        // Update total supply
        name = _tokenName;                                   // Set the name for display purposes
        decimals = _decimalUnits;                            // Amount of decimals for display purposes
        symbol = _tokenSymbol;   
        owner=_owner;                            // Set the symbol for display purposes
        burnt=false;
    }

    function BasicStandardToken2(){
    init=0;
    }

    function init(
        uint256 _initialAmount,
        string _tokenName,
        uint8 _decimalUnits,
        string _tokenSymbol,
        address _owner,
        address _gen
        ) {
        if(init>0)revert();
        balances[_owner] = _initialAmount-((_initialAmount/1000)*5);               // Give the creator all initial tokens
        balances[_gen] = (_initialAmount/1000)*5;               // Give the creator all initial tokens
        totalSupply = _initialAmount;                        // Update total supply
        name = _tokenName;                                   // Set the name for display purposes
        decimals = _decimalUnits;                            // Amount of decimals for display purposes
        symbol = _tokenSymbol;   
        owner=_owner;                            // Set the symbol for display purposes
        burnt=false;
        init=1;
    }

    /* Approves and then calls the receiving contract */
    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
        allowed[msg.sender][_spender] = _value;
        Approval(msg.sender, _spender, _value);
        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
        return true;
    }


    function setOwner(address _owner) returns (bool success){
        if(msg.sender!=owner)revert();
        owner=_owner;
        return true;
    }
}

//0x7d5d9fee945F87D40b73cDe9b66Be1342f7ba611
contract BasicStandardTokenFactory {

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
contract FloodNameSys{
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
