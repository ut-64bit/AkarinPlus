#> akarin_plus:item/inf_light_food
# @within advancement akarin_plus:use/yuki_ball

tellraw @a [{"selector":"@s","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"は呪われた！"}]
effect give @s instant_damage 19980 255 true
advancement revoke @s only akarin_plus:use/anti_pk