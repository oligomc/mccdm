## pick random number if pool length is greater than 1
execute unless score $len cdm.global matches 1 run function cdm:process/pool/rng

## interpret random string and store in str 
data modify block 29999970 -62 7 Text1 set from storage cdm:data temp.pool[0]
data modify storage cdm:data str set from block 29999970 -62 7 Text1