#> akarin_plus:craft/gatya/normal
# @within advancement akarin_plus:craft/gatya/normal

function akarin_plus:craft/

scoreboard players add @s AkarinPlus.Tenjou 1
scoreboard players add $Global AkarinPlus.Tenjou 1

execute if score @s AkarinPlus.Tenjou matches 3000.. run loot spawn ~ ~ ~ loot akarin_plus:par/legend/all
execute if score @s AkarinPlus.Tenjou matches 3000.. run scoreboard players set @s AkarinPlus.Tenjou 0

recipe take @s akarin_plus:craft/gatya/normal
advancement revoke @s only akarin_plus:craft/gatya/normal