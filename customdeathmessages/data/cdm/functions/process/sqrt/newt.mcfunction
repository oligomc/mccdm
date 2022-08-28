scoreboard players operation $next cdm.global = $dx cdm.global
scoreboard players operation $next cdm.global /= $guess cdm.global
scoreboard players operation $next cdm.global += $guess cdm.global
execute store result score $guess cdm.global run scoreboard players operation $next cdm.global /= $2 cdm.global
