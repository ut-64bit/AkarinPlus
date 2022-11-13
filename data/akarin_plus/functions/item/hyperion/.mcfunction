#> akarin_plus:item/hyper_heel_sheet
# @within function akarin_plus:tick/player/main

scoreboard players set @s AkarinPlus.Click.CarrotOnAStick 0

execute if predicate akarin_plus:player/xp_5lvl_more run effect give @s resistance 1 4
execute if predicate akarin_plus:player/xp_5lvl_more run experience add @s -5 levels

#summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:11,Amplifier:5b,Duration:5,ShowParticles:0b}]}

tag @s add X
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["X"]}

execute positioned ^ ^ ^-1 facing ^ ^ ^-1 run tp @e[type=armor_stand,tag=X] ~ ~ ~ ~ ~
execute anchored feet positioned ^ ^ ^8 rotated as @e[tag=X,sort=nearest] positioned ^ ^ ^4 rotated as @e[tag=X,sort=nearest] positioned ^ ^ ^2 rotated as @e[tag=X,sort=nearest] positioned ^ ^ ^1 rotated as @e[tag=X,sort=nearest] positioned ^ ^ ^0.5 rotated as @e[tag=X,sort=nearest] positioned ^ ^ ^0.25 rotated as @e[tag=X,sort=nearest] positioned ^ ^ ^0.125 facing entity @s feet unless block ~ ~2 ~ air run function akarin_plus:item/hyperion/tp
execute if entity @e[type=armor_stand,tag=X] run tp ^ ^ ^15

kill @e[type=armor_stand,tag=X]
tag @s remove X

summon creeper ~ ~1 ~ {ExplosionRadius:10b,Fuse:0}