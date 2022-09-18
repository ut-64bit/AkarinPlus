#コレに関しては特に説明することがない...
tellraw @a {"text":"きれいさっぱり片付けモードを作動しました"}
kill @e[type=armor_stand,tag=senba_dye]
forceload remove ~ ~ ~ ~
datapack disable "file/portal cauldron for 1.17.zip"