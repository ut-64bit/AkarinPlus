#> akarin_plus:tick
# @within tag/function minecraft:tick

execute at @a as @e[type=item,distance=..10] at @s unless data entity @s {Item:{id:"minecraft:enchanted_book"}} if block ~ ~-0.1 ~ smithing_table run function akarin_plus:remove_ench/