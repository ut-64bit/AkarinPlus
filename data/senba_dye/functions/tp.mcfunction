#使うポータルがランダムに選ばれないためのタグ
tag @e[type=armor_stand,tag=senba_dye,distance=..0.5] add Stp_befor
#それぞれをつなげる
execute if entity @e[type=armor_stand,tag=senba_dye,tag=senba_white,distance=..0.5] at @e[type=armor_stand,tag=senba_dye,tag=!Stp_befor,tag=senba_white,limit=1,sort=random] run tp @s ~ ~-0.1 ~
execute if entity @e[type=armor_stand,tag=senba_dye,tag=senba_orange,distance=..0.5] at @e[type=armor_stand,tag=senba_dye,tag=!Stp_befor,tag=senba_orange,limit=1,sort=random] run tp @s ~ ~-0.1 ~
execute if entity @e[type=armor_stand,tag=senba_dye,tag=senba_magenta,distance=..0.5] at @e[type=armor_stand,tag=senba_dye,tag=!Stp_befor,tag=senba_magenta,limit=1,sort=random] run tp @s ~ ~-0.1 ~
execute if entity @e[type=armor_stand,tag=senba_dye,tag=senba_light_blue,distance=..0.5] at @e[type=armor_stand,tag=senba_dye,tag=!Stp_befor,tag=senba_light_blue,limit=1,sort=random] run tp @s ~ ~-0.1 ~
execute if entity @e[type=armor_stand,tag=senba_dye,tag=senba_yellow,distance=..0.5] at @e[type=armor_stand,tag=senba_dye,tag=!Stp_befor,tag=senba_yellow,limit=1,sort=random] run tp @s ~ ~-0.1 ~
execute if entity @e[type=armor_stand,tag=senba_dye,tag=senba_lime,distance=..0.5] at @e[type=armor_stand,tag=senba_dye,tag=!Stp_befor,tag=senba_lime,limit=1,sort=random] run tp @s ~ ~-0.1 ~
execute if entity @e[type=armor_stand,tag=senba_dye,tag=senba_pink,distance=..0.5] at @e[type=armor_stand,tag=senba_dye,tag=!Stp_befor,tag=senba_pink,limit=1,sort=random] run tp @s ~ ~-0.1 ~
execute if entity @e[type=armor_stand,tag=senba_dye,tag=senba_gray,distance=..0.5] at @e[type=armor_stand,tag=senba_dye,tag=!Stp_befor,tag=senba_gray,limit=1,sort=random] run tp @s ~ ~-0.1 ~
execute if entity @e[type=armor_stand,tag=senba_dye,tag=senba_light_gray,distance=..0.5] at @e[type=armor_stand,tag=senba_dye,tag=!Stp_befor,tag=senba_light_gray,limit=1,sort=random] run tp @s ~ ~-0.1 ~
execute if entity @e[type=armor_stand,tag=senba_dye,tag=senba_cyan,distance=..0.5] at @e[type=armor_stand,tag=senba_dye,tag=!Stp_befor,tag=senba_cyan,limit=1,sort=random] run tp @s ~ ~-0.1 ~
execute if entity @e[type=armor_stand,tag=senba_dye,tag=senba_purple,distance=..0.5] at @e[type=armor_stand,tag=senba_dye,tag=!Stp_befor,tag=senba_purple,limit=1,sort=random] run tp @s ~ ~-0.1 ~
execute if entity @e[type=armor_stand,tag=senba_dye,tag=senba_blue,distance=..0.5] at @e[type=armor_stand,tag=senba_dye,tag=!Stp_befor,tag=senba_blue,limit=1,sort=random] run tp @s ~ ~-0.1 ~
execute if entity @e[type=armor_stand,tag=senba_dye,tag=senba_brown,distance=..0.5] at @e[type=armor_stand,tag=senba_dye,tag=!Stp_befor,tag=senba_brown,limit=1,sort=random] run tp @s ~ ~-0.1 ~
execute if entity @e[type=armor_stand,tag=senba_dye,tag=senba_green,distance=..0.5] at @e[type=armor_stand,tag=senba_dye,tag=!Stp_befor,tag=senba_green,limit=1,sort=random] run tp @s ~ ~-0.1 ~
execute if entity @e[type=armor_stand,tag=senba_dye,tag=senba_red,distance=..0.5] at @e[type=armor_stand,tag=senba_dye,tag=!Stp_befor,tag=senba_red,limit=1,sort=random] run tp @s ~ ~-0.1 ~
execute if entity @e[type=armor_stand,tag=senba_dye,tag=senba_black,distance=..0.5] at @e[type=armor_stand,tag=senba_dye,tag=!Stp_befor,tag=senba_black,limit=1,sort=random] run tp @s ~ ~-0.1 ~
execute if entity @e[type=armor_stand,tag=senba_dye,tag=senba_glass,distance=..0.5] at @e[type=armor_stand,tag=senba_dye,tag=!Stp_befor,tag=senba_glass,limit=1,sort=random] run tp @s ~ ~-0.1 ~

#~共通~
#演出
effect give @s blindness 1 0 true
playsound minecraft:entity.enderman.teleport master @a
execute at @s run playsound minecraft:entity.enderman.teleport master @s
#使うポータルがランダムに選ばれないためのタグ削除
tag @e[type=armor_stand,tag=senba_dye,distance=..0.5] remove Stp_befor
#タグ付けして連続tp対策
tag @s add Stp_after
