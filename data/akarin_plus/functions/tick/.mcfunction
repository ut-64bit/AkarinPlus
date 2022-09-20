#> akarin_plus:tick/
# @within tag/function minecraft:tick

execute at @a as @e[type=item,distance=..10] at @s unless data entity @s {Item:{id:"minecraft:enchanted_book"}} if block ~ ~-0.1 ~ smithing_table run function akarin_plus:remove_ench/
execute as @e if predicate akarin_plus:have/teno at @s if entity @a[distance=..64,limit=1] run effect give @s instant_damage 999 28 false

execute as @a run function akarin_plus:tick/player