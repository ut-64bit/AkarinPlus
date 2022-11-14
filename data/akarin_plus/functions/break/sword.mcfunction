#> akarin_plus:break/sword
# @within advancement akarin_plus:break/sword

#> temp
# @internal
    #declare storage _index.d

data merge storage _index.d: {_:{Item:{}}}
data modify storage _index.d: _.Item merge from entity @s SelectedItem.tag

scoreboard players set $unbreaking AkarinPlus.Temporary 0
scoreboard players set $sharpness AkarinPlus.Temporary 0
scoreboard players set $grade AkarinPlus.Temporary 0

execute store result score $unbreaking AkarinPlus.Temporary run data get storage _index.d: _.Item.Enchantments[{id:"minecraft:unbreaking"}].lvl 1.0
scoreboard players add $unbreaking AkarinPlus.Temporary 1
execute store result storage _index.d: _.Item.Enchantments[{id:"minecraft:unbreaking"}].lvl short 1.0 run scoreboard players get $unbreaking AkarinPlus.Temporary

execute store result score $sharpness AkarinPlus.Temporary run data get storage _index.d: _.Item.Enchantments[{id:"minecraft:sharpness"}].lvl 1.0
scoreboard players add $sharpness AkarinPlus.Temporary 1
execute store result storage _index.d: _.Item.Enchantments[{id:"minecraft:sharpness"}].lvl short 1.0 run scoreboard players get $sharpness AkarinPlus.Temporary

execute store result score $grade AkarinPlus.Temporary run data get storage _index.d: _.Item.AkarinPlus.Grade 1.0
scoreboard players add $grade AkarinPlus.Temporary 1
execute store result storage _index.d: _.Item.AkarinPlus.Grade int 1.0 run scoreboard players get $grade AkarinPlus.Temporary

data modify storage _index.d: _.Item.Damage set value 0

execute if score $grade AkarinPlus.Temporary matches 3 run item replace entity @s weapon.mainhand with stone_sword 1
execute if score $grade AkarinPlus.Temporary matches 6 run item replace entity @s weapon.mainhand with golden_sword 1
execute if score $grade AkarinPlus.Temporary matches 9 run item replace entity @s weapon.mainhand with iron_sword 1
execute if score $grade AkarinPlus.Temporary matches 12 run item replace entity @s weapon.mainhand with diamond_sword 1
execute if score $grade AkarinPlus.Temporary matches 15 run item replace entity @s weapon.mainhand with netherite_sword 1

item modify entity @s weapon.mainhand akarin_plus:item_merge

scoreboard players reset $unbreaking AkarinPlus.Temporary
scoreboard players reset $sharpness AkarinPlus.Temporary
scoreboard players reset $grade AkarinPlus.Temporary
data remove storage _index.d: _

advancement revoke @s only akarin_plus:break/sword