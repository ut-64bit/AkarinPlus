#> akarin_plus:item/egg/
# @private

scoreboard players set @s AkarinPlus.Click.CarrotOnAStick 0
clear @s carrot_on_a_stick{AkarinPlus:{Type:egg}} 0
execute at @s as @e[type=!player,distance=..3] run function akarin_plus:item/egg/data