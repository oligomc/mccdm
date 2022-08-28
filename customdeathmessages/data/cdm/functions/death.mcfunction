## process death message
execute positioned ~-2 ~-2 ~-2 as @e[dx=4, dy=4, dz=4, type=item, nbt={Item:{tag:{cdmPlayerDeath:1b}}}] run function cdm:process/main

## read final string
tellraw @a {"nbt":"str", "storage":"cdm:data", "interpret":true}

## remove advancement
advancement revoke @s only cdm:death