#> akarin_plus:reinforcement/homing/
# @within function akarin_plus:tick/player/main

#> Temp
# @private
    #declare tag Temp.Target
    #declare score_holder $TargetX
    #declare score_holder $TargetY
    #declare score_holder $TargetZ
    #declare score_holder $ArrowX
    #declare score_holder $ArrowY
    #declare score_holder $ArrowZ

execute as @e[team=!NoElement,type=!player,type=!item,distance=..16,sort=nearest,limit=1] run tag @s add Temp.Target

data modify storage _index.d: _.Arrow.Pos set from entity @s Pos
data modify storage _index.d: _.Target.Pos set from entity @e[tag=Temp.Target,limit=1] Pos

#X軸
execute store result score $ArrowX AkarinPlus.Temporary run data get storage _index.d: _.Arrow.Pos[0] 100
execute as @e[tag=Temp.Target,limit=1] store result score $TargetX AkarinPlus.Temporary run data get storage _index.d: _.Target.Pos[0] 100
scoreboard players operation $ArrowX AkarinPlus.Temporary -= $TargetX AkarinPlus.Temporary
scoreboard players operation $ArrowX AkarinPlus.Temporary *= $HomingArrow.Speed AkarinPlus.Setting
execute store result storage _index.d: _.Arrow.Pos[0] double -0.001 run scoreboard players get $ArrowX AkarinPlus.Temporary

#Y軸
execute store result score $ArrowY AkarinPlus.Temporary run data get storage _index.d: _.Arrow.Pos[1] 100
execute as @e[tag=Temp.Target,limit=1] store result score $TargetY AkarinPlus.Temporary run data get storage _index.d: _.Target.Pos[1] 100
scoreboard players add $TargetY AkarinPlus.Temporary 50
scoreboard players operation $ArrowY AkarinPlus.Temporary -= $TargetY AkarinPlus.Temporary
scoreboard players operation $ArrowY AkarinPlus.Temporary *= $HomingArrow.Speed AkarinPlus.Setting
execute store result storage _index.d: _.Arrow.Pos[1] double -0.001 run scoreboard players get $ArrowY AkarinPlus.Temporary

#Z軸
execute store result score $ArrowZ AkarinPlus.Temporary run data get storage _index.d: _.Arrow.Pos[2] 100
execute as @e[tag=Temp.Target,limit=1] store result score $TargetZ AkarinPlus.Temporary run data get storage _index.d: _.Target.Pos[2] 100
scoreboard players operation $ArrowZ AkarinPlus.Temporary -= $TargetZ AkarinPlus.Temporary
scoreboard players operation $ArrowZ AkarinPlus.Temporary *= $HomingArrow.Speed AkarinPlus.Setting
execute store result storage _index.d: _.Arrow.Pos[2] double -0.001 run scoreboard players get $ArrowZ AkarinPlus.Temporary

tag @e[tag=Temp.Target] remove Temp.Target
data modify entity @s Motion set from storage _index.d: _.Arrow.Pos
data remove storage _index.d: _

particle end_rod ~ ~ ~ 0 0 0 0 0 force @a
scoreboard players remove @s AkarinPlus.Temporary 1
execute if score @s AkarinPlus.Temporary matches ..0 run kill @s