#> akarin_plus:craft/
# @within function akarin_plus:craft/**

clear @s structure_void
execute as @e[type=item] at @s if entity @a[distance=..8] if data entity @s {Item:{id:"minecraft:structure_void"}} run kill @s