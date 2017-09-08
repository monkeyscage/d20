# d20


In Dungeons&Dragons Table version we use papers to store the informations of a player.

In Ethereum we use a Smart Contract. This leads to a serie of implications, on which I try to shape a possible version of D20 for Ethereum.

Due to the high gas costs, you will see in this description the complexity of such system and you will end up with the idea that the right way is to have some kind of off-chain transactions for implementing complex quests.

Anyway in Ethereum a player can be much more than a paper storage, since we have variables and methods, and since we can remove the authority and ideally I can play with you without the need of a Master: my warrior (a contract) can attack your warrior (another contract) in total autonomy, and by means of a certified trustless fight. It would be like an old style play, where we just play throwing the dice and there is no off-chain virtual world to see on the screen.

All this research is to explore this option. Assuming we can build such system, it will be relatively easy to create off-chain quests, and register the new stats (experience etc. etc.) in your player contract only once and at the end of the quest, resulting in affordable gas costs.

Keep in mind that I didn't still face the problem of randomness. It is a big problem, but is still secondary in this "research".



# PLAYERS #

This is a world of scarsity, you will understanding it better step by step. A player is avaluable thing and is defined by an standalone contract.

The target is to store as less informations as possible and to keep the functions inside an extension that is the same for all players, reducing the costs of deploying a nrew player and makeing it possible to extend players furtherly and upgrade the code if necessary.

It is possible to attack another player, or simply to interact with it.
The possible action may be extended.
The possible reaction of a player depends on the extensions.-
If oyu attack it will defend, if you simply interact ther emay be programmable reactions, like passing an object or a link.
Players will in fact bots, and could be used beyond the game, due to the possible modular interaction.
Players can wear items, you will see this is a problem for many reasons.
An item can be an inventory full of items. This is another problem.
Ideally I should be able to steal from your inventory and able to steal things you are currently wearing.
There will be a central generator of players.
All players experinece must be certified.
There will be a central register.

# PRETORIVS #

Pretorivs is the pretorian program of d20.
It is ... the master?
Each time you attack someone many things must be checked.
Is your player original? is the one you attack original and certified? if so the fight will be official.
Pretorivs will give the permission to external quests to modify the player once he ends the quest officially.
Pretorivs can be ruled only by a dao: the D20-DAO.
Pretorivs will do some other tasks you will understand later.


# ITEMS #
There are various items, like stones, ropes, mushooms, wine and more. Ideally infinite, so we need an open system, and everyone will be able to create basic items for his custom quest.
This is one fo the beauties of this system.
If you know etheruem you eard words like "total global tokenization".
This is something difficult to achive in the real world, easy to achieve inside ethereum.
D20 is a world completely tokenized.
A stone, a rope, a mushroom or a bottle of wine or a basic sword are all different ERC20 tokens! Some are more valuable, some are in infinite amounts.
Ideally we can steal the code form ETHERDELTA (muahahah) and build an easy exchange platform all devoted to D20-item-tokens.
I don't think we need to invent virtual gold, people prefers to earn eth in a quest (lol).
Items aren't pure ERC20, in fact they all have a weight. When you pick up an item or you pass it to someone, the weight of your inventory must be recalculated, and this has further gas costs and is a biot problematic for some reasons.

# MAGIC ITEMS #
I love and hate magic items becasue they aren't ERC20 items, they are like players in my vision, they ae a single smart contract (pretty expensive idea).
A magic item can die and has stats like your warrior.
I am totally convinced this to be the way, but it produces some side effects in the management of the inventory. Also one thiong is to handle a token, anothe ris to handle a smart contract: your warrios must be able to do both!
Same thing for your inventory, it can contain contracts (magic items) or tokens (normal items).
You can interact with magic items of course!
And you can also attack them.
If by chance you know the address of the fountain of ethernal life you should try to interact with it. (yes but you don't know the address).

# PLACES #
Places are like players: contracts.
Places have their own inventory so your player can be inside a place.
If you are at home none can attack you.

# MODIFIERs #
Players, magic items, amnd places offer a modifier.
If you hold something or something is inside something, they affect each others with a modifier.
So your sword will give you +1.
Or a place will give you -1.



