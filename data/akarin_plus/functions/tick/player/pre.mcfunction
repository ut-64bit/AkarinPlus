#> akarin_plus:tick/player/pre
# @within function akarin_plus:tick/player/

execute if score @s AkarinPlus.ComboTick matches ..1 if score @s AkarinPlus.Combo matches 1.. run scoreboard players set @s AkarinPlus.Combo 0
execute if score @s AkarinPlus.ComboTick matches 1.. run scoreboard players remove @s AkarinPlus.ComboTick 1
 
 execute if score @s AkarinPlus.CoolTime matches 1.. run scoreboard players remove @s AkarinPlus.CoolTime 1

execute if score @s AkarinPlus.Combo matches 1.. run function akarin_plus:player/tick/combo_actionbar

scoreboard players operation $temp STA.AttackDamage = @s STA.AttackDamage
scoreboard players operation $temp STA.Armor = @s STA.Armor
scoreboard players operation $temp STA.MaxHealth = @s STA.MaxHealth
scoreboard players operation $temp STA.AttackDamage.Par = @s STA.AttackDamage.Par
scoreboard players operation $temp STA.Armor.Par = @s STA.Armor.Par
scoreboard players operation $temp STA.MaxHealth.Par = @s STA.MaxHealth.Par

scoreboard players set @s STA.AttackDamage 0
scoreboard players set @s STA.Armor 0
scoreboard players set @s STA.MaxHealth 0
scoreboard players set @s STA.AttackDamage.Par 0
scoreboard players set @s STA.Armor.Par 0
scoreboard players set @s STA.MaxHealth.Par 0

tag @s add this