execute as @e[type=!player,type=!item,team=!NoHealth,distance=..16,sort=nearest,limit=1] run tag @s add target

data modify storage _index.d: _.Arrow.Pos set from entity @s Pos
data modify storage _index.d: _.Target.Pos set from entity @e[tag=target,limit=1] Pos

#X軸
execute store result score $ArrowX AkarinPlus.Temp run data get storage _index.d: _.Arrow.Pos[0] 100
execute as @e[tag=target,limit=1] store result score $TargetX AkarinPlus.Temp run data get storage _index.d: _.Target.Pos[0] 100
scoreboard players operation $ArrowX AkarinPlus.Temp -= $TargetX AkarinPlus.Temp
scoreboard players operation $ArrowX AkarinPlus.Temp *= $HomingArrow.Speed Setting
execute store result storage _index.d: _.Arrow.Pos[0] double -0.001 run scoreboard players get $ArrowX AkarinPlus.Temp

#Y軸
execute store result score $ArrowY AkarinPlus.Temp run data get storage _index.d: _.Arrow.Pos[1] 100
execute as @e[tag=target,limit=1] store result score $TargetY AkarinPlus.Temp run data get storage _index.d: _.Target.Pos[1] 100
scoreboard players operation $ArrowY AkarinPlus.Temp -= $TargetY AkarinPlus.Temp
scoreboard players operation $ArrowY AkarinPlus.Temp *= $HomingArrow.Speed Setting
execute store result storage _index.d: _.Arrow.Pos[1] double -0.001 run scoreboard players get $ArrowY AkarinPlus.Temp

#Z軸
execute store result score $ArrowZ AkarinPlus.Temp run data get storage _index.d: _.Arrow.Pos[2] 100
execute as @e[tag=target,limit=1] store result score $TargetZ AkarinPlus.Temp run data get storage _index.d: _.Target.Pos[2] 100
scoreboard players operation $ArrowZ AkarinPlus.Temp -= $TargetZ AkarinPlus.Temp
scoreboard players operation $ArrowZ AkarinPlus.Temp *= $HomingArrow.Speed Setting
execute store result storage _index.d: _.Arrow.Pos[2] double -0.001 run scoreboard players get $ArrowZ AkarinPlus.Temp

tag @e[tag=target] remove target
data modify entity @s Motion set from storage _index.d: _.Arrow.Pos
data remove storage _index.d: _