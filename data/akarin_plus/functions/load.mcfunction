#> akarin_plus:load
# @within tag/function minecraft:load

scoreboard objectives add Setting dummy
scoreboard objectives add AkarinPlus.Temp dummy
scoreboard objectives add AkarinPlus.Health health

scoreboard objectives add AkarinPlus.Combo dummy
scoreboard objectives add AkarinPlus.ComboTick dummy

scoreboard objectives add AkarinPlus.CoolTime dummy

scoreboard objectives add AkarinPlus.Tenjou dummy

scoreboard objectives add AkarinPlus.used.bow minecraft.used:minecraft.bow

scoreboard objectives add STA.MaxHealth dummy
scoreboard objectives add STA.AttackDamage dummy
scoreboard objectives add STA.Armor dummy
scoreboard objectives add STA.MaxHealth.Par dummy
scoreboard objectives add STA.AttackDamage.Par dummy
scoreboard objectives add STA.Armor.Par dummy

scoreboard objectives add AkarinPlus.Click.CarrotOnAStick used:carrot_on_a_stick

schedule clear akarin_plus:tick/60t_interval
schedule function akarin_plus:tick/60t_interval 3s

execute unless data storage akarin_plus: {_:{Version:{MainVer:"1.4"}}} run function akarin_plus:sys/main_updata
execute unless data storage akarin_plus: {_:{Version:{SubVer:"Beta1.5"}}} run function akarin_plus:sys/sub_updata

scoreboard players set $3 Const 3