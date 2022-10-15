#> akarin_plus:load
# @within tag/function minecraft:load

scoreboard objectives add AkarinPlus.Temp dummy
scoreboard objectives add AkarinPlus.Tenjou dummy
scoreboard objectives add AkarinPlus.Click.CarrotOnAStick used:carrot_on_a_stick

execute unless data storage akarin_plus: {_:{Version:{MainVer:"1.1.6"}}} run function akarin_plus:sys/main_updata
execute unless data storage akarin_plus: {_:{Version:{SubVer:"Beta1.3"}}} run function akarin_plus:sys/sub_updata