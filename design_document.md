# Design Document

This game is heavily inspired by the old classic Chainsaw Warrior board game, by Games Workshop. It seeks to capitalize on what made Chainsaw Warrior great, while addressing it's flaws (of which there were quite a few).

The main flaws that I perceive to exist in the original game are a lack of meaningful variety in game mechanics, and a lack of meaningful choices. Of all the items available to the player, only a small subset had any noticeable impact on gameplay, and even fewer actually required the player to make choices regarding how to use them. These are the main issues that I will be trying to address with my spiritual sequel.

## Gameplay

Cards are split into 3 'adventure decks'. Players draw encounters from the first deck until it is exhausted, then move onto the next. He Who Cannot Be Named resides somewhere in the 3rd deck, and must be defeated in order to win the game

Upon drawing a monster card, the monster must be faught (rules detailed in the combat section). Upon drawing an item, the item goes into the players inventory. Upon drawing another type of card, just do what it says on the card

The player starts with 2 random items and 20 hp, and a random talent

### Combat

Each enemy has a combat value. The player must roll 2d6 and add their combat modifier. If the resultant sum is greater than or equal to the enemies combat roll then they are defeated. Otherwise the player will suffer some penalty, depending on how badly they failed the roll

The first penalty is inflicted for failing the roll by 1 or 2, the second for failing by between 3 and 5, and the third for failing by 6 or more

Some enemies can come as a group; in these cases the combat value will remain the same, but the penalty for failure will be multiplied by the number of combatants. There will also be a number of rounds of combat equal to the number of enemies. Example:

Player encounters a group of 3 goblins. On the first roll, the player must roll a 6 or more, and will suffer 3, 6, or 12 damage upon failure. On the second roll of combat, the player again must roll 6 or more, but will suffer 2, 4, or 8 damage upon failure. Then there will be a third round of combat involved only one goblin.

Ranged weapons have limited uses, but allow the player to defeat an enemy without risking harm. The player rolls for combat as usual, but if they fail, there is no penalty. The combat will simply go on as if nothing had happened

### Traps

Traps are evaded in a similar way to enemies, except that they player must use their agility modifier instead of their combat modifier. The penalties for failing a trap roll are fixed for each trap and do not depend on how badly the player failed the roll

### Talents

The player starts the game with 1 of 4 talents, randomly assigned:

-Buff: +1 to melee combat roll
-Eagle eyed: +1 to ranged combat roll
-Agile: +1 to agility
-Chubby: +6 to max health

---

## Card ideas

A random list of ideas for encounters throughout the game. Some may be used, some may not. Just wanted to get them down before I forgot them. Monster stats etc. are approximate and subject to change

### Monsters

- Acid slime:

    - combat value: 7
    - first penalty: lose random item
    - second penalty: lose random item and -2 health
    - third penalty: lose 2 random items and -2 health
    - special: ranged weapons have no effect

- Toxic slime:

    - combat value: 7
    - first penalty: combat roll -1 permanently
    - second penalty: combat roll -1 permanently and -2 health
    - third penalty: combat roll -2 permanently and -2 health
    - special: ranged weapons have no effect

- Oily slime:

    - combat value: 7
    - first penalty: agility -1 permanently
    - second penalty: agility -1 permanently and -2 health
    - third penalty: agility -2 permanently and -2 health
    - special: ranged weapons have no effect

- Goblin:

    - combat value: 6
    - first penalty: 1 damage
    - second penalty: 2 damage
    - third penalty: 4 damage

- Minotaur:

    - combat value: 8
    - first penalty: 2 damage
    - second penalty: 3 damage, crippled; temporary -1 to agility (6 turns?)
    - third penalty: 4 damage, crippled

- Ogre:

    - combat value: 11
    - first penalty: 3 damage
    - second penalty: 4 damage, stunned; temporary -1 to combat roll
    - third penalty: 5 damage, stunned

- The Demoness (unique):

    - Defeating her grants the Demonic Eye
    - Possible option to avoid fight by doing some sort of tricksey gamble?
    - combat value: 10
    - first penalty: 1 damage, cursed; automatically suffer the worst penalty of the next monster encountered
    - second penalty: 3 damage, cursed
    - third penalty: 3 damage, cursed, all stats lowered permanently

- The Dread Knight (unique):

    - Defeating him grants the World Slayer
    - combat value: 14
    - first penalty: 5 damage
    - second penalty: 10 damage
    - third penalty: 15 damage

- The Serpent King (Unique):

    - Defeating him grants the Spear of Osiris
    - combat value: 12
    - first penalty: 3 damage, discard an item
    - second penalty: 3 damage, discard 2 items
    - third penalty: 5 damage, discard 3 items

- The Spectre (Unique):

    - Gets shuffled into the next deck after the encounter, or the current deck if the player is on the last deck
    - Combat value is increased by 2 each time it is encountered
    - combat value: 9
    - first penalty: 1 damage
    - second penalty: 2 damage
    - third penalty: instant death

- Shklah'lu, the many tentacled one (unique):

    - Defeating him grants Tentacle of Shklah'lu
    - Player must make an agility roll _and_ a combat roll, and use the lowest value
    - Immune to ranged weapons
    - combat value: 9
    - first penalty: stench of Shkla'lu; merchants will refuse to trade with you for the remainder of the current deck
    - second penalty: stench of Shklah'lu, skin of Shklah'lu; when using an item, 50% chance of fumbling (item has no effect). Lasts until end of current deck
    - third penalty: stench of Shklah'lu, skin of Shklah'lu, Shklah'lu's blessing; Shklah'lu's other effects are permanent

- He Who Cannot Be Named (final boss):

    - Winning the fight wins the game. Losing the fight causes him to be shuffled back into the deck
    - combat value: 16
    - first penalty: 3 damage
    - second penalty: 3 damage, discard an item
    - third penalty: 3 damage, discard an item and -1 combat value permanently

### Items

Player starts with 1 or 2 items. A few other items will be shuffled into the adventure decks. The remaining items will be put in an item pile, and can be aquired through merchants or other miscellaneous ways. If an item is lost or used up, it is removed from the game and cannot be drawn again. There are also certain unique items that can only be aquired by defeating the respective unique monster

- Shuriken: Add +1 to combat roll for current combat. 5 uses. Can stack multiple times

- Orb of power: Spells cause bad effect with 33% chance instead of 50%

- Healing elixir: regain 1d6 health. Can be used in combat

- Medical kit: regain 2d6 health. Cannot be used in combat

- Shield: 50% chance to reduce incoming damage by 1

- Focus potion: +2 to agility and combat for duration of current event

- Grappling hook: +2 to agility

- Looking glass: single use. Reveals the next 1d6 cards to the player

- Crystal ball: 3 uses. Reveals the next card in the deck

- Smoke bombs: 3 uses. Shuffle the current monster back into the current deck

#### Melee Weapons

- Broad sword: +2 to combat roll while equipped

- Dagger: +1 to combat roll while equipped

- Berserker flail: +3 to combat roll but received damage is doubled

- Ethereal blade: +1 to combat damage. Upon being lost or discarded, immediately returns to the players inventory

- Flaming sword: extra d3 to combat roll. Value is doubled against slimes

- Bull whip: +1 to combat roll and +2 to agility while equipped

#### Ranged Weapons

- Sun wand: Fires a beam of concentrated energy. Ranged weapon, 3 uses. Combat value +3. Can damage slimes

- Short bow: Simple ranged weapon. 10 arrows, combat value -2

- Long bow: Ranged weapon. 6 arrows, no combat modifier

- Musket: 8 shots, combat modifier +1. 50% to inflict 1 damage to player upon use

- Bombs: 3 bombs. Combat modifier +1, can kill groups of enemies in one go. 50% chance take 1 damage

- Sling: 15 stones. Combat modifier -3

- Crossbow: 6 bolts. Combat modifier +1. Can only be used once per combat

#### Unique Items

These items are granted for defeating their respective unique monster

- World Slayer: A weapon which gives +5 combat value but drains 3 hp at end of combat

- Demonic Eye: A charm which allows player to pick 2 items from each merchant instead of 1

- Spear of Osiris: Weapon. While equipped, player regens 1 hp every time he wins a fight, and cannot die; upon death the player will resurrect with 30% max hp and the spear will be destroyed

- Tentacle of Shklah'lu: +2 to agility. Player may use agility instead of combat roll in combat

### Spells

Spells all have a good and bad effect, each happening with a 50% chance

- Oblivion: (Kill opponent instantly) or (kill player instantly)

- Transmutation: (Turn target item into 1 of 3 items, drawn from the item pile) or (target item turns into random slime (fight))

- Fury: (+2 to combat roll and damage is halved for 6 turns) or (agility -1 for 6 turns)

- Beautious wings: (permanent +4 to agility) or (max health is halved)

- Magic armour: (create a magical shield, lasting for 6 turns or until it has absorbed 10 damage) or (combat roll -1 for 6 turns)

- Revelation: (Reveal the next 2d6 cards to the player) or (reveal a random card from the discard pile and shuffle it into the current deck)

- Growth: (gain d6 max hp (also increases current hp by same amount)) or (shuffle random item from inventory into current deck)

- Sludge: (discard the top card from the current deck) or (summon 3 random slimes (fight))

### Traps

Traps require the player to roll agility and compare it against the difficulty. Getting greater than or equal to the difficulty evades the trap

- Spike trap: 4 damage. Difficulty 7

- Acid trap: lose random item. Difficulty 6

- Flame trap: combat roll -3 for 4 turns. Difficulty 8

### Other Events

- Merchant: player may select 1 of 3 items, drawn from the items that have not already been included in one of the adventure decks

- Occupied house: pass agility test (difficulty 9-11?) to get a random item. No penalty for failure

- Empty house: player has a choice of resting and gaining d3 health or searching for loot, with a 1 in 6 chance of finding a random item

- Empty clearing: as above

- Bandits: Discard an item or lose 5 health (does nothing if the player has no items)

- Blessed Shrine; Gives player a permanent increase to all stats. Essentially plays the part of a 'level up' in conventional RPGs. Maybe 5 or 6 of them scattered throughout the game decks

#### Other Shrines

- Agility shrine; large temporary increase to agility. Maybe +3 for the next 5 encounters? Something like that. One off encounter

- Combat shrine; as above, but increases combat roll instead of agility

- Healing shrine; full health

## Card Numbers

Some approximate numbers for each type of card

- 2 random item cards given to player at start

### All Decks

The following cards will be shuffled together and evenly distributed amongst all 3 decks

- 6 random item cards (leaving 22 for the item pile)
- 3 random unique monsters
- 3 shrines (one of each)
- 18 trap cards (6 of each type)
- 3 bandit cards
- 6 house cards
- 6 slimes (2 of each type)
- 9 empty house/clearing cards

Total: 54

### First Deck

- 3 merchant cards
- 1 blessed shrine card
- 2 goblin group card
- 10 goblins
- 5 minotaurs

Total: 22

### Second Deck

- 2 merchant cards
- 2 blessed shrine card
- 2 minotaur group
- 10 minotaurs
- 5 goblins

Total: 22

### Third Deck

- 1 merchant cards
- 3 blessed shrine card
- 1 ogre group
- 5 ogres
- 5 minotaurs
- 5 goblins

- 1 He Who Cannot Be Named

Total: 22

40 cards per deck

---

# Things to remember

- Demoness curse effect

- Shklah'lu's stench effect

- Using Sludge spell to discard HWCBN from the deck should win the game instantly (Well done, you drowned the bad guy in sludge)
