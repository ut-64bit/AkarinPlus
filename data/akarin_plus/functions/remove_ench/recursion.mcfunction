#> akarin_plus:remove_ench/recursion
# @within function akarin_plus:remove_ench/*

loot spawn ~ ~ ~ loot akarin_plus:remove_ench

data remove storage _index.d: Item.Enchantments[-1]

execute if data storage _index.d: Item.Enchantments[-1] at @s run function akarin_plus:remove_ench/recursion