#> akarin_plus:player/use/bow
# @within function akarin_plus:tick/player/main

#> Temp
# @within
#   akarin_plus:player/use/bow
#   akarin_plus:reinforcement/multi_shot/
#   akarin_plus:reinforcement/homing/shot
    #declare tag Temp.Arrow

scoreboard players set @s AkarinPlus.Use.Bow 0

tag @e[type=#arrows,sort=nearest,limit=1] add Temp.Arrow

execute if predicate akarin_plus:reinforcement/multi_shot run function akarin_plus:reinforcement/multi_shot/
execute if predicate akarin_plus:reinforcement/homing as @e[tag=Temp.Arrow] run function akarin_plus:reinforcement/homing/shot
execute if predicate akarin_plus:reinforcement/explosion as @e[tag=Temp.Arrow] run function akarin_plus:reinforcement/explosion/shot

tag @e[tag=Temp.Arrow] remove Temp.Arrow