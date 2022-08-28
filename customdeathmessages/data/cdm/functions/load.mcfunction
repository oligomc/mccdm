## unload data pack assets
execute as @e[x=29999968.0, dx=0, y=-64.5, dy=0, z=0.0, dz=0, type=marker, tag=cdm.forceload] at @s run function cdm:unload 

## load data pack assets
# add forceload at 29999968 0
forceload add 29999968 0
fill 29999968 -64 5 29999972 -60 9 minecraft:bedrock replace
setblock 29999970 -62 7 minecraft:oak_sign replace
summon marker 29999968 -64 0 {Tags:["cdm.forceload", "global.forceload", "global.ignore", "global.ignore.kill"], CustomName:'{"text":"cdm.forceload", "color":"yellow"}'}

# add scoreboards and data
scoreboard objectives add cdm.global dummy {"text":"Custom Death Messages Global", "color":"yellow"}
scoreboard objectives add cdm.fall minecraft.custom:minecraft.fall_one_cm {"text":"Custom Death Messages Fall Damage", "color":"yellow"}
scoreboard players set $2 cdm.global 2
scoreboard players set $10 cdm.global 10
data merge storage cdm:data {entity:{}, param:{loc:[0, 0, 0]}, str:''}
function cdm:messages/combat/root
function cdm:messages/combat/player
function cdm:messages/explosion/root
function cdm:messages/explosion/player
function cdm:messages/fall/root
function cdm:messages/fall/player
function cdm:messages/fire/root
function cdm:messages/fire/player
function cdm:messages/lightning/root
function cdm:messages/lightning/player
function cdm:messages/magic/root
function cdm:messages/magic/player
function cdm:messages/projectile/root
function cdm:messages/projectile/player
function cdm:messages/starvation/root
function cdm:messages/starvation/player
function cdm:messages/void/root
function cdm:messages/void/player

# update gamerules
execute store result score $showDeathMessages cdm.global run gamerule showDeathMessages
execute store result score $doMobLoot cdm.global run gamerule doMobLoot
gamerule showDeathMessages false
gamerule doMobLoot true