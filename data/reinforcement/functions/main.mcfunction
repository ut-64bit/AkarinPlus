data merge storage _index.d {_:{Item:{},AddItem:{}}}
data modify storage _index.d _.Item merge from entity @s Item
data modify storage _index.d _.AddItem merge from entity @e[tag=add,sort=nearest,limit=1] Item

function reinforcement:merge
data remove storage _index.d _