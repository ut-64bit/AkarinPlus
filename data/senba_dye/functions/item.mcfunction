#アイテムが染料かどうかを選別してタグ付け
#※SPTは"せんばポータルテレポート"の略
tag @s[type=item,nbt={Item:{id:"minecraft:white_dye",Count:1b}}] add SPT_true
tag @s[type=item,nbt={Item:{id:"minecraft:orange_dye",Count:1b}}] add SPT_true
tag @s[type=item,nbt={Item:{id:"minecraft:magenta_dye",Count:1b}}] add SPT_true
tag @s[type=item,nbt={Item:{id:"minecraft:light_blue_dye",Count:1b}}] add SPT_true
tag @s[type=item,nbt={Item:{id:"minecraft:yellow_dye",Count:1b}}] add SPT_true
tag @s[type=item,nbt={Item:{id:"minecraft:lime_dye",Count:1b}}] add SPT_true
tag @s[type=item,nbt={Item:{id:"minecraft:pink_dye",Count:1b}}] add SPT_true
tag @s[type=item,nbt={Item:{id:"minecraft:gray_dye",Count:1b}}] add SPT_true
tag @s[type=item,nbt={Item:{id:"minecraft:light_gray_dye",Count:1b}}] add SPT_true
tag @s[type=item,nbt={Item:{id:"minecraft:cyan_dye",Count:1b}}] add SPT_true
tag @s[type=item,nbt={Item:{id:"minecraft:purple_dye",Count:1b}}] add SPT_true
tag @s[type=item,nbt={Item:{id:"minecraft:blue_dye",Count:1b}}] add SPT_true
tag @s[type=item,nbt={Item:{id:"minecraft:brown_dye",Count:1b}}] add SPT_true
tag @s[type=item,nbt={Item:{id:"minecraft:green_dye",Count:1b}}] add SPT_true
tag @s[type=item,nbt={Item:{id:"minecraft:red_dye",Count:1b}}] add SPT_true
tag @s[type=item,nbt={Item:{id:"minecraft:black_dye",Count:1b}}] add SPT_true
tag @s[type=item,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] add SPT_true
#染料じゃないやつにタグ付け
tag @s[tag=!SPT_true] add SPT_flase