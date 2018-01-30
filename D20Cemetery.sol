
contract D20Cemetery{

address public owner; //standard needed for Alpha Layer and generic augmentation
address public controller; //allowed to post, share and edit logs
string standard="D20Cemetery.1.0";  //the blog standard
uint public logcount;
 
//creation
function D20Cemetery(address o) {
owner=o;
logcount=1;
logs.push(log(this,block.number,logcount-1,logcount+1));
}

//change owner
function manager(address o)returns(bool){
if(msg.sender!=owner)throw;
owner=o;
return true;
}
 
//add a new post at the end of the log
function addDead(address D20Player) returns(bool){
if((msg.sender!=owner)&&(msg.sender!=controller))throw;
log l=logs[logcount-1];
l.next=logcount;
logs.push(log(D20Player,block.number,logcount-1,logcount+1));
logcount++;
return true;
}
 
 
//read the logs by index
function readLog(uint i)constant returns(uint,address,uint,uint,uint,uint){
log l=logs[i];
return(logs.length,l.ethlink,l.blocknumber,l.prev,l.next,logcount);
}

//the logs container
log[] logs;
//used to know in advance the logs structure
string public logInterface="a-Log|u-Block|u-PrevLog|u-NextLog|u-TotExposed";

    struct log{
    address ethlink;
    uint blocknumber;
    uint prev;
    uint next;
   }
 
 
//destroy blog
function kill(){
if (msg.sender != owner)throw;
selfdestruct(owner);
}


}
