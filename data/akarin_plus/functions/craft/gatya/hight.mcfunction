#> akarin_plus:craft/gatya/hight
# @within advancement akarin_plus:craft/gatya/hight

function akarin_plus:craft/

scoreboard players add @s AkarinPlus.Tenjou 1

execute if score @s AkarinPlus.Tenjou matches 3000.. run function akarin_plus:craft/gatya/rank/legend
execute if score @s AkarinPlus.Tenjou matches 3000.. run scoreboard players set @s AkarinPlus.Tenjou 0

recipe take @s akarin_plus:craft/gatya/hight
advancement revoke @s only akarin_plus:craft/gatya/hight