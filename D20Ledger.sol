contract D20Ledger{

address public owner; //standard needed for Alpha Layer and generic augmentation
address public controller; //allowed to post, share and edit logs
string standard="D20Ledger.1.0";  //the blog standard
uint public logcount;

mapping(address => bool)public ledger;
 
//creation
function D20Ledger(address o) {
owner=o;
}

//change owner
function manager(address o)returns(bool){
if(msg.sender!=owner)throw;
owner=o;
return true;
}
 
//add a new post at the end of the log
function addEntity(address D20Player) returns(bool){
if((msg.sender!=owner)&&(msg.sender!=controller))revert();
logs.push(log(D20Player));
logcount++;
ledger[D20Player]=true;
return true;
}
 
 
//read the logs by index
function readLog(uint i)constant returns(uint,address){
log l=logs[i];
return(logs.length,l.ethlink);
}

//the logs container
log[] logs;
//used to know in advance the logs structure
string public logInterface="a-Log";

    struct log{
    address ethlink;
   }
 



}
