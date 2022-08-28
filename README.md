# Custom Death Messages

## Description
Create custom death messages in JSON text format

## Installation
Once the data pack is [installed](https://minecraft.fandom.com/wiki/Tutorials/Installing_a_data_pack), type `/reload` in-game to load all data pack assets.

The data pack can be disabled in-game by typing the command `/function cdm:uninstall`, whereafter the contents can be removed from the data packs folder.

## Usage
### Customizing death messages
Death messages are stored in the `cdm:messages` storage namespace. Messages are stored as arrays of strings in [JSON text format](https://minecraft.fandom.com/wiki/Raw_JSON_text_format) separated into tags corresponding to the death type:
1. `combat`: damage inflicted from PvP, PvE, cacti, anvils, and flight 
2. `explosion`: damage inflicted from tnt and creepers
3. `fall`: damage inflicted from falling
4. `fire`: damage inflicted from fire, magma blocks, lava, and fireballs
5. `lightning`: damage inflicted from lightning
6. `magic`: damage inflicted from instant damage potions and evoker fangs
7. `projectile`: damage inflicted from arrows and tridents
8. `starvation`: damage inflicted from hunger
9. `suffocation`: damage inflicted from drowning, suffocating, withering, and ender pearls 
10. `void`: damage inflicted from the void or `/kill` command

Each tag above is broken into `root` and `player` tags. The `player` tag is called for death events containing a `victim` and `killer`, while the `root` tag is called for events that only contain a `victim`. `root` and `player` tags can store an arbitrary number of strings which are randomly selected each time a death occurs.

Death messages can be edited using the `data modify` command:
```
/data modify storage cdm:messages combat.root append value '{"text":"An example death message"}'
/data modify storage cdm:messages combat.player set value ['message 1', 'message 2']
```
or by changing the default messages specified in the `cdm/functions/messages/[death type]` namespace in the datapack files. Each `death type` contains a `root.mcfunction` and `player.mcfunction` file which can be updated using `/reload` in-game. 

### Using player names and other parameters in messages
Relevant death event data is available in the `cdm:data` storage namespace. Player selectors are stored in the `entity` tag:
- `victim`: The player that died
- `direct_killer`: The entity that directly inflicted the killing damage
- `killer`: The entity that is responsible for the death

Other data is stored in the `param` tag:
- `loc`: The x, y, z coordinates of `victim` at death, stored as an array of integers
- `dist`: The distance between `victim` and `killer` at the time of death

These tags can be inserted into a death message using an `nbt` chat component with the `interpret` tag set to `true`. Below is a valid death message example:
```
'{"nbt":"entity.victim", "storage":"cdm:data", "interpret":true, "extra":[{"text":"has died"}]}'
```
## Notes
Requires gamerule `showDeathMessages` to be `false` and `doMobLoot` to be `true`. If changed, type `/reload` in-game.

## Credits
Data pack assets written by oligomc (IGN Oligo)

## License
MIT (see LICENSE.txt)