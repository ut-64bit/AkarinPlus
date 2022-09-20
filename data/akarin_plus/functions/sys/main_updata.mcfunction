#> akarin_plus:sys/main_updata
# @within function akarin_plus:load

data modify storage akarin_plus: _.Version.MainVer set value "1.1.6"

# Log
    data modify storage akarin_plus: Log append value 'UPDATA : MainVer <= 1.1.6'
    tellraw @a [{"translate":"%1$s : %2$s <= %3$s","with":[{"text":"UPDATA","color":"aqua"},{"text":"MainVer","color":"green"},{"nbt":"_.Version.MainVer","storage":"akarin_plus:","interpret":false}],"color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]