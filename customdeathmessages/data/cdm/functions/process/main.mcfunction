## get death event data
function cdm:process/store

## randomly select message from pool
execute store result score $len cdm.global run data get storage cdm:data temp.pool
execute unless score $len cdm.global matches 0 run function cdm:process/pool/main

## kill item entity
kill @s