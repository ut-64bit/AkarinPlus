#> asset:reinforcement/merge/defence_plus
# @within function asset:reinforcement/merge/_

data modify storage _index.d: _.BaseItem.tag.Reinforcement[{id:"defence"}].lvl set value 2
data modify storage _index.d: _.BaseItem.tag.display.Lore append value '{"text":"Defence+","color":"gray","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}'

function reinforcement:core/success/