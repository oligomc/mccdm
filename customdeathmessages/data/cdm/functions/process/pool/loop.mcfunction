data remove storage cdm:data temp.pool[0]
scoreboard players remove $rand cdm.global 1
execute unless score $rand cdm.global matches 0 run function cdm:process/pool/loop