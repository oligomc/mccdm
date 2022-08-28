scoreboard players set $c1 cdm.global 13
scoreboard players set $c2 cdm.global 3
execute if score $guess cdm.global matches 101.. run function cdm:process/sqrt/nest
scoreboard players operation $guess cdm.global /= $c1 cdm.global
scoreboard players operation $guess cdm.global += $c2 cdm.global
function cdm:process/sqrt/newt
function cdm:process/sqrt/newt