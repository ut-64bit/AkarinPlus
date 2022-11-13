tag @e[type=arrow,sort=nearest,limit=1] add this_arrow

data modify storage _index.d: _.Arrow merge from entity @e[tag=this_arrow,limit=1] {}
data remove storage _index.d: _.Arrow.Pos
data remove storage _index.d: _.Arrow.UUID

execute as @e[tag=this_arrow,limit=1] at @s rotated as @a[tag=this] rotated ~ 0 run summon arrow ^ ^0.2 ^1 {Tags:["MultiShot.Init"]}
execute as @e[tag=this_arrow,limit=1] at @s rotated as @a[tag=this] rotated ~ 0 run summon arrow ^ ^-0.2 ^1 {Tags:["MultiShot.Init"]}

execute as @e[tag=MultiShot.Init,limit=2] run data modify entity @s {} merge from storage _index.d: _.Arrow

data remove storage _index.d: _.Arrow
tag @e[tag=this_arrow] remove this_arrow