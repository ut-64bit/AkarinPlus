#> akarin_plus:reinforcement/multi_shot/
# @within function akarin_plus:player/use/bow

#> Temp
# @within function akarin_plus:reinforcement/multi_shot/**
    #declare tag Temp.MultiShot.Init
    #declare tag Temp.Arrow

data modify storage _index.d: _.Arrow merge from entity @e[tag=Temp.Arrow,limit=1] {}
data modify storage _index.d: _.Arrow.pickup set value 0b
data modify storage _index.d: _.Arrow.life set value 1140s
data modify storage _index.d: _.Arrow.PierceLevel set value 2b
data remove storage _index.d: _.Arrow.Pos
data remove storage _index.d: _.Arrow.UUID

execute unless predicate akarin_plus:player/sneaking as @e[tag=Temp.Arrow,limit=1] at @s rotated as @a[tag=this] run function akarin_plus:reinforcement/multi_shot/vertical/
execute if predicate akarin_plus:player/sneaking as @e[tag=Temp.Arrow,limit=1] at @s rotated as @a[tag=this] run function akarin_plus:reinforcement/multi_shot/sideways/

execute as @e[tag=Temp.MultiShot.Init,limit=2] run data modify entity @s {} merge from storage _index.d: _.Arrow

data remove storage _index.d: _.Arrow