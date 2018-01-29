contract D20Place is SuperOwned {
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

function D20Place(string _name,address _master,uint _sex,uint _class,uint _alignment,uint _race){
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
