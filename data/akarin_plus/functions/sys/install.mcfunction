#> akarin_plus:sys/install
# @within advancement akarin_plus:sys/install

tellraw @s "------------------------------------------"
tellraw @s ""
tellraw @s [{"translate":"AkarinPlus %1$s %2$s","with":[{"nbt":"Version.MainVer","storage":"akarin_plus:","interpret":false},{"nbt":"Version.SubVer","storage":"akarin_plus:","interpret":false}],"color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" の導入が完了しました!","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @s ""
tellraw @s {"text":"https://github.com/kagura-84/AkarinPlus","color":"blue","bold":false,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"open_url","value":"https://github.com/kagura-84/AkarinPlus"}}
tellraw @s ""
tellraw @s [{"text": "                               Created by UT_64bit"}]
tellraw @s ""
tellraw @s "------------------------------------------"

    tellraw @s [{"translate":"%1$s : %2$s <= %3$s","with":[{"text":"UPDATA","color":"aqua"},{"text":"MainVer","color":"green"},{"nbt":"_.Version.MainVer","storage":"akarin_plus:","interpret":false}],"color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
        tellraw @s [{"translate":"%1$s : %2$s <= %3$s","with":[{"text":"UPDATA","color":"aqua"},{"text":"SubVer","color":"green"},{"nbt":"_.Version.SubVer","storage":"akarin_plus:","interpret":false}],"color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
        
scoreboard players set @s AkarinPlus.CoolTime 0
advancement revoke @s only akarin_plus:handler/entity_hurt_player