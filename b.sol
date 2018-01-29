contract D20Place is SuperOwned {
string public name;
address public location;

uint[] public sets;
address[] public slots;
mapping(address => bool)public masters;

address public brain;
address public body;

    modifier onlyMaster { 
        if (!masters[msg.sender]) revert();
        _;
    }

function D20Place(string _name,address _master,uint _sex,uint _class,uint _alignment,uint _race){
name=_name;
masters[_master]=true;
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
sets.length++;  //hold price
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

function setPrice(uint _price)public onlyOwner{
sets[15]=_price;
}

function setHoldPrice(uint _price)public onlyOwner{
sets[16]=_price;
}

function set(uint _i,uint _j)public onlyMaster{
sets[_i]=_j;
} 

function  wear(uint _i,address _j)public onlyMaster{
if(location==address("0x0"))revert();
slots[_i]=_j;
}

function setLocation(address _location)public onlyMaster{
location=_location;
}

function setMaster(address _master,bool b)public onlyMaster{
masters[_master]=b;
}


function setBrain(address a)public onlyOwner{
brain=a;
} 

function setBody(address a)public onlyOwner{
body=a;
}


}
