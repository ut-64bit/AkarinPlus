#> akarin_plus:tick/player
# @within function akarin_plus:tick/

#>
# @private
    #declare tag this

tag @s add this

execute if predicate akarin_plus:have/wing run effect give @s slow_falling 1 1 false
execute if predicate akarin_plus:have/legacy at @s as @e[distance=..5,tag=!this] run effect give @s weakness 1 2 false
execute if predicate akarin_plus:have/legacy at @s as @e[distance=..5,tag=!this] run effect give @s slowness 1 1 false
execute if score @s AkarinPlus.Click.CarrotOnAStick matches 1.. if predicate akarin_plus:have/xp_ticket run function akarin_plus:item/xp_ticket
execute if score @s AkarinPlus.Click.CarrotOnAStick matches 1.. if predicate akarin_plus:have/hyper_heel_sheet run function akarin_plus:item/hyper_heel_sheet

tag @s remove this