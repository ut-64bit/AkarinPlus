#> akarin_plus:remove_ench/
# @within function akarin_plus:tick/

data merge storage _index.d {Item:{}}
data modify storage _index.d Item.Enchantments set from entity @s Item.tag.Enchantments

execute if data storage _index.d Item.Enchantments[0] at @s run function akarin_plus:remove_ench/recursion
data remove entity @s Item.tag.Enchantments

data remove storage _index.d Item