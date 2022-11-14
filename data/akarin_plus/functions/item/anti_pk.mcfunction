#> akarin_plus:item/anti_pk
# @within advancement akarin_plus:use/anti_pk

tellraw @a [{"selector":"@s","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"は呪われた！"}]
tag @s add Effect.InstantDamage

# 初期化
    advancement revoke @s only akarin_plus:use/anti_pk