#> akarin_plus:tick/player/post
# @within function akarin_plus:tick/player/

# score
    execute if score @s AkarinPlus.Click.CarrotOnAStick matches 1.. run scoreboard players set @s AkarinPlus.Click.CarrotOnAStick 0

# tag
    tag @s remove this
    tag @s remove Crafted
    tag @s remove InstantDamage