#> akarin_plus:item/hyperion/move
# @within function akarin_plus:item/hyperion/**

tp @s ^ ^ ^0.25

execute if block ~ ~ ~ #akarin_plus:air if entity @a[tag=this,distance=..16] run function akarin_plus:item/hyperion/move

tp @s ^ ^ ^-0.25
tp @a[tag=this,limit=1] ~ ~ ~
kill @s