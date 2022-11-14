#> akarin_plus:item/hyperion/
# @within function akarin_plus:tick/player/main

#> Temp
# @within akarin_plus:item/hyperion/**
    #declare tag Temp.Hyperion
    #declare tag Temp.Bom

execute if predicate akarin_plus:player/xp_5lvl_more run effect give @s resistance 1 4
execute if predicate akarin_plus:player/xp_5lvl_more run experience add @s -5 levels

summon marker ~ ~ ~ {NoGravity:1b,Tags:["Temp.Hyperion"]}
execute at @s anchored eyes positioned ^ ^ ^ run tp @e[tag=Temp.Hyperion,limit=1] ~ ~ ~ ~ ~

function akarin_plus:item/hyperion/move

summon creeper ~ ~201 ~ {ExplosionRadius:10b,Fuse:0s,Tags:["Temp.Bom"]}
tp @e[tag=Temp.Bom,limit=1] ~ ~-200 ~