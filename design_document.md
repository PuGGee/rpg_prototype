# Design Document

This game is heavily inspired by the old classic Chainsaw Warrior board game, by Games Workshop. It seeks to capitalize on what made Chainsaw Warrior great, while addressing it's flaws (of which there were quite a few).

The main flaws that I perceive to exist in the original game are a lack of meaningful variety in game mechanics, and a lack of meaningful choices. Of all the items available to the player, only a small subset had any noticeable impact on gameplay, and even fewer actually required the player to make choices regarding how to use them. These are the main issues that I will be trying to address with my spiritual sequel.

## Gameplay

Cards are split into 3 'adventure decks'. Players draw encounters from the first deck until it is exhausted, then move onto the next. He Who Cannot Be Named resides somewhere in the 3rd deck, and must be defeated in order to win the game

### Combat

Each enemy has a combat value. The player must roll 2d6 and add their combat modifier. If the resultant sum is greater than or equal to the enemies combat roll then they are defeated. Otherwise the player will suffer some penalty, depending on how badly they failed the roll

Some enemies can come as a group; in these cases the combat value will remain the same, but the penalty for failure will be multiplied by the number of combatants. There will also be a number of rounds of combat equal to the number of enemies. Example:

Player encounters a group of 3 goblins. On the first roll, the player must roll a 6 or more, and will suffer 3, 6, or 12 damage upon failure. On the second roll of combat, the player again must roll 6 or more, but will suffer 2, 4, or 8 damage upon failure. Then there will be a third round of combat involved only one goblin.

Ranged weapons have limited uses, but allow the player to defeat an enemy without risking harm. The player rolls for combat as usual, but if they fail, there is no penalty. The combat will simply go on as if nothing had happened

### Traps

Traps are evaded in a similar way to enemies, except that they player must use their agility modifier instead of their combat modifier. The penalties for failing a trap roll are fixed for each trap and do not depend on how badly the player failed the roll

## Card ideas

A random list of ideas for encounters throughout the game. Some may be used, some may not. Just wanted to get them down before I forgot them. Monster stats etc. are approximate and subject to change

- Blessed Shrine; Gives player a permanent increase to all stats. Essentially plays the part of a 'level up' in conventional RPGs. Maybe 5 or 6 of them scattered throughout the game decks

### Other shrines

- Agility shrine; large temporary increase to agility. Maybe +3 for the next 5 encounters? Something like that. One off encounter

- Combat shrine; as above, but increases combat roll instead of agility

- Healing shrine; full health

### Monsters

- Acid slime:
    combat value: 6
    first penalty: lose random item
    second penalty: lose random item and -2 health
    third penalty: lose 2 random items and -2 health
    special: ranged weapons have no effect

- Toxic slime:
    combat value: 6
    first penalty: combat roll -1 permanently
    second penalty: combat roll -1 permanently and -2 health
    third penalty: combat roll -2 permanently and -2 health
    special: ranged weapons have no effect

- Goblin:
    combat value: 6
    first penalty: 1 damage
    second penalty: 2 damage
    third penalty: 4 damage

- Minotaur:
    combat value: 8
    first penalty: 2 damage
    second penalty: 3 damage, crippled; temporary -1 to agility (6 turns?)
    third penalty: 4 damage, crippled

- Demoness (unique):
    Defeating her grants the Demonic Eye
    Possible option to avoid fight by doing some sort of tricksey gamble?
    combat value: 9
    first penalty: 1 damage, cursed; automatically suffer the worst penalty of the next monster encountered
    second penalty: 3 damage, cursed
    third penalty: 3 damage, cursed, all stats lowered permanently

- The Dread Knight (unique):
    Defeating him grants the World Slayer
    combat value: 14
    first penalty: 5 damage
    second penalty: 10 damage
    third penalty: 15 damage

- The Serpent King (Unique):
    Defeating him grants the Spear of Osiris
    combat value: 10
    first penalty: 3 damage
    second penalty: 3 damage, temporary -2 to agility
    third penalty: 5 damage, permanent -2 to agility

- The Spectre (Unique):
    Gets shuffled into the next deck after the encounter, or the current deck if the player is on the last deck
    combat value: 11
    first penalty: 1 damage
    second penalty: 2 damage
    third penalty: death

- Shklah'lu, the many tentacled one (unique):
    Defeating him grants Tentacle of Shklah'lu
    Player must take an agility test to avoid his tentacles
    combat value: 10
    first penalty: ?
    second penalty: ?
    third penalty: ?

- He Who Cannot Be Named (final boss):
    Winning the fight wins the game. Losing the fight causes him to be shuffled back into the deck
    combat value: 16
    first penalty: 3 damage
    second penalty: 3 damage, discard an item
    third penalty: 3 damage, discard an item and -1 combat value permanently

### Items

Player starts with 1 or 2 items. A few other items will be shuffled into the adventure decks. The remaining items will be put in an item pile, and can be aquired through merchants or other miscellaneous ways. If an item is lost or used up, it goes back into the item pile, and can possibly be aquired again. Spells are an exception to this rule; spells are gone forever once they are used. There are also certain unique items that can only be aquired by defeating the respective unique monster

- Shuriken: Add +1 to combat roll for current combat. 6 uses. Can stack multiple times

- Orb of power: Spells cause bad effect with 25% chance instead of 50%

- Healing elixir: regain 1d6 health. Can be used in combat

- Medical kit: regain 2d6 health. Cannot be used in combat

#### Melee Weapons

- Broad sword: +2 to combat roll while equipped

- Dagger: +1 to combat roll while equipped

- Berserker flail: +3 to combat roll but received damage is doubled

- Ethereal blade: +1 to combat damage. Upon being lost or discarded, immediately returns to the players inventory (if equipped)

- Flaming sword: extra d3 to combat roll. Value is doubled against slimes

- Bull whip: +1 to combat roll and +2 to agility while equipped

#### Ranged Weapons

- Sun wand: Fires a beam of concentrated energy. Ranged weapon, 3 uses. Combat value +2. Can damage slimes

- Short bow: Simple ranged weapon. 10 arrows, combat value -2

- Long bow: Ranged weapon. 6 arrows, no combat modifier

- Musket: 8 shots, combat modifier +1. 50% to inflict 1 damage to player upon use

- Bombs: 3 bombs. Combat modifier +1, can kill groups of enemies in one go. 50% chance take 1 damage

- Sling: 15 stones. Combat modifier -3

- Crossbow: 6 bolts. Combat modifier +1. Can only be used once per combat

#### Unique Items

These items are granted for defeating their respective unique monster

- World Slayer: A weapon which gives +5 combat value but drains 1 hp upon winning combat

- Demonic Eye: A charm which allows player to pick 2 items from each merchant instead of 1

- Spear of Osiris: Weapon. While equipped, player regens 1 hp every time he wins a fight, and cannot die; upon death the player will resurrect with 30% max hp and the spear will be destroyed

- Tentacle of Shklah'lu: +1 to agility. Player may use agility instead of combat roll in combat

### Spells

Spells all have a good and bad effect, each happening with a 50% chance

- Oblivion: (Kill opponent instantly) or (kill player instantly)

- Transmutation: (Turn target item into 1 of 3 items, drawn from the item pile) or (target item turns into random slime (fight))

- Fury: (+2 to combat roll and ignore damage for 5 turns) or (permanent -2 to max health)

- Beautious wings: (permanent +2 to agility) or (current health is halved)

### Traps

- Spike trap: 4 damage. Difficulty 8

- Pit trap

### Other Events

- Merchant: player may select 1 of 3 items, drawn from the items that have not already been included in one of the adventure decks
