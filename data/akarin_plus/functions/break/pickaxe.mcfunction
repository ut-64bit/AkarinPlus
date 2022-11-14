#> akarin_plus:break/pickaxe
# @within advancement akarin_plus:break/pickaxe

#> temp
# @internal
    #declare storage _index.d
    #declare score_holder $fortune

# nbt取得
    data merge storage _index.d: {_:{Item:{}}}
    data modify storage _index.d: _.Item merge from entity @s SelectedItem.tag

# score_holder作成
    scoreboard players set $unbreaking AkarinPlus.Temporary 0
    scoreboard players set $efficiency AkarinPlus.Temporary 0
    scoreboard players set $fortune AkarinPlus.Temporary 1
    scoreboard players set $grade AkarinPlus.Temporary 0

execute store result score $unbreaking AkarinPlus.Temporary run data get storage _index.d: _.Item.Enchantments[{id:"minecraft:unbreaking"}].lvl 1.0
scoreboard players add $unbreaking AkarinPlus.Temporary 1
execute store result storage _index.d: _.Item.Enchantments[{id:"minecraft:unbreaking"}].lvl short 1.0 run scoreboard players get $unbreaking AkarinPlus.Temporary

execute store result score $efficiency AkarinPlus.Temporary run data get storage _index.d: _.Item.Enchantments[{id:"minecraft:efficiency"}].lvl 1.0
scoreboard players add $efficiency AkarinPlus.Temporary 1
execute store result storage _index.d: _.Item.Enchantments[{id:"minecraft:efficiency"}].lvl short 1.0 run scoreboard players get $efficiency AkarinPlus.Temporary

execute store result score $grade AkarinPlus.Temporary run data get storage _index.d: _.Item.AkarinPlus.Grade 1.0
scoreboard players add $grade AkarinPlus.Temporary 1
execute store result storage _index.d: _.Item.AkarinPlus.Grade int 1.0 run scoreboard players get $grade AkarinPlus.Temporary

# execute store result score $fortune AkarinPlus.Temp run data get storage _index.d: _.Item.Enchantments[{id:"minecraft:fortune"}].lvl 1.0
# scoreboard players add $fortune AkarinPlus.Temp 1
# execute store result storage _index.d: _.Item.Enchantments[{id:"minecraft:fortune"}].lvl short 1.0 run scoreboard players get $fortune AkarinPlus.Temp

data modify storage _index.d: _.Item.Damage set value 0

# アップグレード
    execute if score $grade AkarinPlus.Temporary matches 3 run item replace entity @s weapon.mainhand with stone_pickaxe 1
    execute if score $grade AkarinPlus.Temporary matches 6 run item replace entity @s weapon.mainhand with golden_pickaxe 1
    execute if score $grade AkarinPlus.Temporary matches 9 run item replace entity @s weapon.mainhand with iron_pickaxe 1
    execute if score $grade AkarinPlus.Temporary matches 12 run item replace entity @s weapon.mainhand with diamond_pickaxe 1
    execute if score $grade AkarinPlus.Temporary matches 15 run item replace entity @s weapon.mainhand with netherite_pickaxe 1

# アイテム操作
    item modify entity @s weapon.mainhand akarin_plus:item_merge

# 初期化
    scoreboard players reset $unbreaking AkarinPlus.Temporary
    scoreboard players reset $efficiency AkarinPlus.Temporary
    scoreboard players reset $fortune AkarinPlus.Temporary
    scoreboard players reset $grade AkarinPlus.Temporary
    data remove storage _index.d: _
    advancement revoke @s only akarin_plus:break/pickaxe