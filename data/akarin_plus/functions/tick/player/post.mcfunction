#> akarin_plus:tick/player/post
# @within function akarin_plus:tick/player/

# score
    execute if score @s AkarinPlus.Click.CarrotOnAStick matches 1.. run scoreboard players set @s AkarinPlus.Click.CarrotOnAStick 0

execute unless score @s STA.MaxHealth = $temp STA.MaxHealth run function score_to_attribute:max_health
execute unless score @s STA.MaxHealth.Par = $temp STA.MaxHealth.Par run function score_to_attribute:max_health/par

execute unless score @s STA.AttackDamage = $temp STA.AttackDamage run function score_to_attribute:attack_damage
execute unless score @s STA.AttackDamage.Par = $temp STA.AttackDamage.Par run function score_to_attribute:attack_damage/par

execute unless score @s STA.Armor = $temp STA.Armor run function score_to_attribute:armor

# tag
    tag @s remove this
    tag @s remove Crafted
    tag @s remove Effect.InstantDamage