#> akarin_plus:craft/gatya/hight
# @within advancement akarin_plus:craft/gatya/hight

function akarin_plus:craft/

scoreboard players add @s AkarinPlus.Tenjou 1
scoreboard players add $Global AkarinPlus.Tenjou 1

execute if score @s AkarinPlus.Tenjou matches 3000.. run function akarin_plus:craft/gatya/rank/legend
execute if score @s AkarinPlus.Tenjou matches 3000.. run scoreboard players set @s AkarinPlus.Tenjou 0

execute if score @s AkarinPlus.Tenjou matches 30000.. run loot spawn ~ ~ ~ loot akarin_plus:par/legend/2
execute if score @s AkarinPlus.Tenjou matches 30000.. run scoreboard players set $Global AkarinPlus.Tenjou 0

execute if score $Global AkarinPlus.Tenjou matches 0 run tellraw @a [{"selector":"@s"},{"text":"が天井ガチャを引きました!"}]

recipe take @s akarin_plus:craft/gatya/hight
advancement revoke @s only akarin_plus:craft/gatya/hight