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
