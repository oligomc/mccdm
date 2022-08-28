## unload data pack assets
# reset gamerules
execute if score $showDeathMessages cdm.global matches 1 run gamerule showDeathMessages true
execute if score $doMobLoot cdm.global matches 0 run gamerule doMobLoot false

# remove data, scoreboards, and advancements
data remove storage cdm:data entity
data remove storage cdm:data param
data remove storage cdm:data str
data remove storage cdm:data temp
data remove storage cdm:messages combat
data remove storage cdm:messages explosion
data remove storage cdm:messages fall
data remove storage cdm:messages fire
data remove storage cdm:messages lightning
data remove storage cdm:messages magic
data remove storage cdm:messages projectile
data remove storage cdm:messages starvation
data remove storage cdm:messages suffocation
data remove storage cdm:messages void
scoreboard objectives remove cdm.global
scoreboard objectives remove cdm.fall
advancement revoke @a only cdm:death

#remove forceload if no other global.forceload entities
fill 29999968 -64 5 29999972 -60 9 minecraft:bedrock replace
tag @s remove global.forceload
execute align xyz unless entity @e[dx=15, dy=319, dz=15, tag=global.forceload] run forceload remove ~ ~
kill @s