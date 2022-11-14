#> asset:reinforcement/merge/damage_boost_speed
# @within function asset:reinforcement/merge/_

data modify storage _index.d: _.BaseItem.tag.Reinforcement append value {id:"damage_boost_speed",lvl:1}
data modify storage _index.d: _.BaseItem.tag.display.Lore append value '{"text":"DamageBoost [Speed]","color":"gray","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}'

function reinforcement:core/success/