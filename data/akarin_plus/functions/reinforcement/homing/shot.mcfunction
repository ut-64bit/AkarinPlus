#> akarin_plus:reinforcement/homing/shot
# @within function akarin_plus:player/use/bow

tag @s add RI.HomingArrow
scoreboard players set @s AkarinPlus.Temporary 200
execute at @p run particle end_rod ^ ^ ^1 0 0 0 0.05 3 normal @a