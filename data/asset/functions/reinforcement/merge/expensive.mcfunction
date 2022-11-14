#> asset:reinforcement/merge/expensive
# @within function asset:reinforcement/merge/_

data modify storage _index.d: _.BaseItem.tag.Reinforcement append value {id:"expensive",lvl:1}
data modify storage _index.d: _.BaseItem.tag.display.Lore append value '{"text":"Expensive","color":"gray","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}'

function reinforcement:core/success/