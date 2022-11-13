data modify entity @s Item set from storage _index.d _.Item
data remove storage _index.d _.AddItem
kill @e[tag=add,sort=nearest,distance=..1.5,limit=1]
playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 1
tag @s remove success