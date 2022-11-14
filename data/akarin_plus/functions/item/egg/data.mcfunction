#> akarin_plus:item/egg/data
# @within function akarin_plus:item/egg/

data modify storage _index.d: _.Item.tag.EntityTag merge from entity @s {}
data modify storage _index.d: _.Item.tag.id set value "minecraft:bat_spawn_egg"

data remove storage _index.d: _.Item.tag.UUID
data remove storage _index.d: _.Item.tag.Pos
data remove storage _index.d: _.Item.tag.Motion

data modify entity @s {} set from storage _index.d: _.Item