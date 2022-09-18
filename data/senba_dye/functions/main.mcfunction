#検知(重くなりませんように)
execute as @e[type=item,tag=!SPT_true,tag=!SPT_false] at @s run function senba_dye:item
execute as @e[type=item,tag=SPT_true] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] unless entity @e[type=armor_stand,tag=senba_dye,distance=..0.7] run function senba_dye:color
#大釜がないときにアマスタ(色ガラス)を消す
execute at @e[type=armor_stand,tag=senba_dye] unless block ~ ~ ~ water_cauldron[level=3] run function senba_dye:dis
#大釜に入ったヤツを飛ばす
execute at @e[type=armor_stand,tag=senba_dye] as @e[tag=!senba_dye,tag=!Stp_after,distance=..0.5] run function senba_dye:tp
execute as @e[tag=Stp_after] at @s unless block ~ ~ ~ minecraft:water_cauldron[level=3] run tag @s remove Stp_after
