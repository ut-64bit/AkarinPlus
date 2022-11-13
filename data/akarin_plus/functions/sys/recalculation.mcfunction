tag @s remove AkarinPlus.magnet_ring
tag @s remove AkarinPlus.proof_of_mining
tag @s remove AkarinPlus.rfi_ingot
tag @s remove AkarinPlus.empty
tag @s remove AkarinPlus.closed_third_eye
tag @s remove AkarinPlus.third_eye
tag @s remove AkarinPlus.totem
tag @s remove AkarinPlus.AntiPK

scoreboard players set $Temp AkarinPlus.Temp 0
execute store result score $Temp AkarinPlus.Temp run clear @s iron_ingot{AkarinPlus:{Type:magnet_ring}} 0
execute if score $Temp AkarinPlus.Temp matches 1.. run tag @s add AkarinPlus.magnet_ring

scoreboard players set $Temp AkarinPlus.Temp 0
execute store result score $Temp AkarinPlus.Temp run clear @s golden_pickaxe{AkarinPlus:{Type:proof_of_mining}} 0
execute if score $Temp AkarinPlus.Temp matches 1.. run tag @s add AkarinPlus.proof_of_mining

scoreboard players set $Temp AkarinPlus.Temp 0
execute store result score $Temp AkarinPlus.Temp run clear @s copper_ingot{AkarinPlus:{Type:rfi_ingot}} 0
execute if score $Temp AkarinPlus.Temp matches 1.. run tag @s add AkarinPlus.rfi_ingot

scoreboard players set $Temp AkarinPlus.Temp 0
execute store result score $Temp AkarinPlus.Temp run clear @s heart_of_the_sea{AkarinPlus:{Type:closed_third_eye}} 0
execute if score $Temp AkarinPlus.Temp matches 1.. run tag @s add AkarinPlus.closed_third_eye

scoreboard players set $Temp AkarinPlus.Temp 0
execute store result score $Temp AkarinPlus.Temp run clear @s heart_of_the_sea{AkarinPlus:{Type:third_eye}} 0
execute unless entity @s[tag=AkarinPlus.closed_third_eye] if score $Temp AkarinPlus.Temp matches 1.. run tag @s add AkarinPlus.third_eye

scoreboard players set $Temp AkarinPlus.Temp 0
execute store result score $Temp AkarinPlus.Temp run clear @s copper_ingot{AkarinPlus:{Type:empty}} 0
execute if score $Temp AkarinPlus.Temp matches 1.. run tag @s add AkarinPlus.empty

scoreboard players set $Temp AkarinPlus.Temp 0
execute store result score $Temp AkarinPlus.Temp run clear @s paper{AkarinPlus:{Type:anti_pk},Enchantments:[{id:"vanishing_curse"}]} 0
execute if score $Temp AkarinPlus.Temp matches 1.. run tag @s add AkarinPlus.AntiPK

scoreboard players set $Temp AkarinPlus.Temp 0
execute store result score $Temp AkarinPlus.Temp run clear @s totem_of_undying 0
execute if score $Temp AkarinPlus.Temp matches 1.. run tag @s add AkarinPlus.totem

advancement revoke @s only akarin_plus:sys/recalculation