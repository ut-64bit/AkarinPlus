#> akarin_plus:item/xp_ticket
# @within function akarin_plus:tick/player/main

experience add @s 1 levels
scoreboard players set @s AkarinPlus.Click.CarrotOnAStick 0
clear @s carrot_on_a_stick{AkarinPlus:{Type:xp_ticket}} 1

playsound entity.player.levelup player @s ~ ~ ~ 1 1 1