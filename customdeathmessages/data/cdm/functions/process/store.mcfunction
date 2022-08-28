## store death event data in cdm:data
data remove storage cdm:data entity
data remove storage cdm:data param.dist
data modify storage cdm:data str set value ''
data modify storage cdm:data temp set from entity @s Item.tag
data modify storage cdm:data temp.pool set from storage cdm:data temp.event.root

# store victim data
data modify storage cdm:data entity.victim set from storage cdm:data temp.display.Lore[0]
execute store result storage cdm:data param.loc[0] int 1 run data get storage cdm:data temp.cdmVictimPos[0]
execute store result storage cdm:data param.loc[1] int 1 run data get storage cdm:data temp.cdmVictimPos[1]
execute store result storage cdm:data param.loc[2] int 1 run data get storage cdm:data temp.cdmVictimPos[2]

# store killer data if any
data modify storage cdm:data temp.selector set from storage cdm:data temp.display.Lore[1]
execute unless data storage cdm:data {temp:{selector:'{"selector":"@s"}'}} run function cdm:process/nest