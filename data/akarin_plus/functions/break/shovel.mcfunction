#> akarin_plus:break/shovel
# @within advancement akarin_plus:break/shovel

#> temp
# @internal
    #declare storage _index.d

data merge storage _index.d {_:{Item:{}}}
data modify storage _index.d _.Item merge from entity @s SelectedItem.tag

scoreboard players set $unbreaking AkarinPlus.Temp 0
scoreboard players set $efficiency AkarinPlus.Temp 0
scoreboard players set $grade AkarinPlus.Temp 0

execute store result score $unbreaking AkarinPlus.Temp run data get storage _index.d _.Item.Enchantments[{id:"minecraft:unbreaking"}].lvl 1.0
scoreboard players add $unbreaking AkarinPlus.Temp 1
execute store result storage _index.d _.Item.Enchantments[{id:"minecraft:unbreaking"}].lvl short 1.0 run scoreboard players get $unbreaking AkarinPlus.Temp

execute store result score $efficiency AkarinPlus.Temp run data get storage _index.d _.Item.Enchantments[{id:"minecraft:efficiency"}].lvl 1.0
scoreboard players add $efficiency AkarinPlus.Temp 1
execute store result storage _index.d _.Item.Enchantments[{id:"minecraft:efficiency"}].lvl short 1.0 run scoreboard players get $efficiency AkarinPlus.Temp

execute store result score $grade AkarinPlus.Temp run data get storage _index.d _.Item.AkarinPlus.Grade 1.0
scoreboard players add $grade AkarinPlus.Temp 1
execute store result storage _index.d _.Item.AkarinPlus.Grade int 1.0 run scoreboard players get $grade AkarinPlus.Temp

data modify storage _index.d _.Item.Damage set value 0

execute if score $grade AkarinPlus.Temp matches 3 run item replace entity @s weapon.mainhand with stone_shovel 1
execute if score $grade AkarinPlus.Temp matches 6 run item replace entity @s weapon.mainhand with golden_shovel 1
execute if score $grade AkarinPlus.Temp matches 9 run item replace entity @s weapon.mainhand with iron_shovel 1
execute if score $grade AkarinPlus.Temp matches 12 run item replace entity @s weapon.mainhand with diamond_shovel 1
execute if score $grade AkarinPlus.Temp matches 15 run item replace entity @s weapon.mainhand with netherite_shovel 1

item modify entity @s weapon.mainhand akarin_plus:item_merge

scoreboard players reset $unbreaking AkarinPlus.Temp
scoreboard players reset $efficiency AkarinPlus.Temp
scoreboard players reset $grade AkarinPlus.Temp
data remove storage _index.d _

advancement revoke @s only akarin_plus:break/shovel