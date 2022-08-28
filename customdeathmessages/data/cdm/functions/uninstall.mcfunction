## unload data pack assets
execute as @e[x=29999968.0, dx=0, y=-64.5, dy=0, z=0.0, dz=0, type=marker, tag=cdm.forceload] at @s run function cdm:unload 

## disable data pack
datapack disable "file/customdeathmessages"