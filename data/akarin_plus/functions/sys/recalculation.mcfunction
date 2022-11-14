#> akarin_plus:sys/recalculation
# @within advancement akarin_plus:sys/recalculation

# tag削除
    tag @s remove AkarinPlus.Have.MagnetRing
    tag @s remove AkarinPlus.Have.ProofMining
    tag @s remove AkarinPlus.Have.RFIIngot
    tag @s remove AkarinPlus.Have.Empty
    tag @s remove AkarinPlus.Have.ClosedThirdEye
    tag @s remove AkarinPlus.Have.ThirdEye
    tag @s remove AkarinPlus.Have.Totem
    tag @s remove AkarinPlus.Have.AntiPK

# tag付与
    ## MagnetRing
        scoreboard players set $Temp AkarinPlus.Temporary 0
        execute store result score $Temp AkarinPlus.Temporary run clear @s iron_ingot{AkarinPlus:{Type:magnet_ring}} 0
        execute if score $Temp AkarinPlus.Temporary matches 1.. run tag @s add AkarinPlus.Have.MagnetRing

    ## ProofMining
        scoreboard players set $Temp AkarinPlus.Temporary 0
        execute store result score $Temp AkarinPlus.Temporary run clear @s golden_pickaxe{AkarinPlus:{Type:proof_of_mining}} 0
        execute if score $Temp AkarinPlus.Temporary matches 1.. run tag @s add AkarinPlus.Have.ProofMining

    ## RFIIngot
        scoreboard players set $Temp AkarinPlus.Temporary 0
        execute store result score $Temp AkarinPlus.Temporary run clear @s copper_ingot{AkarinPlus:{Type:rfi_ingot}} 0
        execute if score $Temp AkarinPlus.Temporary matches 1.. run tag @s add AkarinPlus.Have.RFIIngot

    ## ClosedThirdEye
        scoreboard players set $Temp AkarinPlus.Temporary 0
        execute store result score $Temp AkarinPlus.Temporary run clear @s heart_of_the_sea{AkarinPlus:{Type:closed_third_eye}} 0
        execute if score $Temp AkarinPlus.Temporary matches 1.. run tag @s add AkarinPlus.Have.ClosedThirdEye

    ## ThirdEye
        scoreboard players set $Temp AkarinPlus.Temporary 0
        execute store result score $Temp AkarinPlus.Temporary run clear @s heart_of_the_sea{AkarinPlus:{Type:third_eye}} 0
        execute unless entity @s[tag=AkarinPlus.Have.ClosedThirdEye] if score $Temp AkarinPlus.Temporary matches 1.. run tag @s add AkarinPlus.Have.ThirdEye

    ## Empty
        scoreboard players set $Temp AkarinPlus.Temporary 0
        execute store result score $Temp AkarinPlus.Temporary run clear @s copper_ingot{AkarinPlus:{Type:empty}} 0
        execute if score $Temp AkarinPlus.Temporary matches 1.. run tag @s add AkarinPlus.Have.Empty

    ## AntiPK
        scoreboard players set $Temp AkarinPlus.Temporary 0
        execute store result score $Temp AkarinPlus.Temporary run clear @s paper{AkarinPlus:{Type:anti_pk},Enchantments:[{id:"minecraft:vanishing_curse"}]} 0
        execute if score $Temp AkarinPlus.Temporary matches 1.. run tag @s add AkarinPlus.Have.AntiPK

    ## Totem
        scoreboard players set $Temp AkarinPlus.Temporary 0
        execute store result score $Temp AkarinPlus.Temporary run clear @s totem_of_undying 0
        execute if score $Temp AkarinPlus.Temporary matches 1.. run tag @s add AkarinPlus.Have.Totem

# 初期化
    advancement revoke @s only akarin_plus:sys/recalculation