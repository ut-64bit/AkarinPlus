#> akarin_plus:tick/player/main
# @within function akarin_plus:tick/player/

# have
    execute if predicate akarin_plus:have/wing run effect give @s slow_falling 1 1 false
    execute if predicate akarin_plus:have/legacy at @s as @e[tag=!this,distance=..5] run effect give @s weakness 1 2 false
    execute if predicate akarin_plus:have/legacy at @s as @e[tag=!this,distance=..5] run effect give @s slowness 1 1 false
    execute if predicate akarin_plus:have/life_charm at @s as @e[distance=..3] run effect give @s regeneration 1 1 false

# carrot_on_a_stick
    execute if score @s AkarinPlus.Click.CarrotOnAStick matches 1.. if predicate akarin_plus:have/xp_ticket run function akarin_plus:item/xp_ticket
    execute if score @s AkarinPlus.Click.CarrotOnAStick matches 1.. if predicate akarin_plus:have/hyper_heel_sheet run function akarin_plus:item/hyper_heel_sheet

# craft
    execute if entity @s[tag=Crafted] as @e[type=item] at @s if entity @a[distance=..8] if data entity @s {Item:{id:"minecraft:structure_void"}} run kill @s

# effect
    execute if entity @s[tag=InstantDamage] run effect give @s instant_damage 1 9 false