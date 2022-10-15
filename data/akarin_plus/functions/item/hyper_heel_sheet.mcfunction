#> akarin_plus:item/hyper_heel_sheet
# @within function akarin_plus:tick/player/main

scoreboard players set @s AkarinPlus.Click.CarrotOnAStick 0
clear @s carrot_on_a_stick{AkarinPlus:{Type:hyper_heel_sheet}} 1

effect give @s instant_health 10 0 false

particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
playsound entity.player.levelup player @s ~ ~ ~ 1 2 1