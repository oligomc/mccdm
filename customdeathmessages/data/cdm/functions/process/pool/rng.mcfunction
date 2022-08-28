execute store result score $rand cdm.global run data get entity @s UUID[0]
scoreboard players operation $rand cdm.global %= $len cdm.global
execute unless score $rand cdm.global matches 0 run function cdm:process/pool/loop