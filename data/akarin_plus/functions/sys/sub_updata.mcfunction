#> akarin_plus:sys/sub_updata
# @within function akarin_plus:load

data modify storage akarin_plus: _.Version.SubVer set value "Beta1.5"

# Log
    data modify storage akarin_plus: Log append value 'UPDATA : SubVer <= Beta1.5'
    tellraw @a [{"translate":"%1$s : %2$s <= %3$s","with":[{"text":"UPDATA","color":"aqua"},{"text":"SubVer","color":"green"},{"nbt":"_.Version.SubVer","storage":"akarin_plus:","interpret":false}],"color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]