## store positions of victim and killer
execute store result score $x cdm.global run data get storage cdm:data temp.cdmVictimPos[0]
execute store result score $y cdm.global run data get storage cdm:data temp.cdmVictimPos[1]
execute store result score $z cdm.global run data get storage cdm:data temp.cdmVictimPos[2]
execute store result score $dx cdm.global run data get storage cdm:data temp.cdmKillerPos[0]
execute store result score $dy cdm.global run data get storage cdm:data temp.cdmKillerPos[1]
execute store result score $dz cdm.global run data get storage cdm:data temp.cdmKillerPos[2]

## calculate distance between victim and killer
scoreboard players operation $dx cdm.global -= $x cdm.global
scoreboard players operation $dy cdm.global -= $y cdm.global
scoreboard players operation $dz cdm.global -= $z cdm.global
scoreboard players operation $dx cdm.global *= $dx cdm.global
scoreboard players operation $dy cdm.global *= $dy cdm.global
scoreboard players operation $dz cdm.global *= $dz cdm.global
scoreboard players operation $dx cdm.global += $dy cdm.global
execute store result score $guess cdm.global run scoreboard players operation $dx cdm.global += $dz cdm.global
execute if score $guess cdm.global matches 2.. run function cdm:process/sqrt/main
execute store result storage cdm:data param.dist int 1 run scoreboard players get $guess cdm.global