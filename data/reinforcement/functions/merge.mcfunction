scoreboard players set $lvl AkarinPlus.Temp 0
scoreboard players set $unbreaking AkarinPlus.Temp 0
execute store result score $unbreaking AkarinPlus.Temp run data get storage _index.d _.Item.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl 1.0

execute if data storage _index.d {_:{AddItem:{id:"minecraft:reinforced_deepslate"}}} if score $unbreaking AkarinPlus.Temp matches 10.. unless data storage _index.d {_:{Item:{tag:{Unbreakable:1b}}}} run function reinforcement:merge/unbreakable

execute if data storage _index.d {_:{AddItem:{id:"minecraft:golden_carrot"}}} unless data storage _index.d _.Item.tag.Reinforcement[{id:"night_vision"}] if predicate reinforcement:helmet run function reinforcement:merge/night_vision

execute if data storage _index.d {_:{AddItem:{tag:{AkarinPlus:{Type:"speed_charm"}}}}} unless data storage _index.d _.Item.tag.Reinforcement[{id:"damage_boost_speed"}] if predicate reinforcement:boots run function reinforcement:merge/damage_boost_speed

# Healthy
    execute if data storage _index.d {_:{AddItem:{tag:{AkarinPlus:{Type:"nutrition_helmet"}}}}} unless data storage _index.d _.Item.tag.Reinforcement[{id:"healthy"}] run function reinforcement:merge/healthy
    execute if data storage _index.d {_:{AddItem:{tag:{AkarinPlus:{Type:"inf_light_food"}}}}} if data storage _index.d _.Item.tag.Reinforcement[{id:"healthy",lvl:1}] run function reinforcement:merge/healthy_plus

# Life
    execute if data storage _index.d {_:{AddItem:{tag:{AkarinPlus:{Type:"life_charm"}}}}} unless data storage _index.d _.Item.tag.Reinforcement[{id:"life"}] run function reinforcement:merge/life
    execute if data storage _index.d {_:{AddItem:{tag:{AkarinPlus:{Type:"health_amulet"}}}}} if data storage _index.d _.Item.tag.Reinforcement[{id:"life",lvl:1}] run function reinforcement:merge/life_plus
    execute if data storage _index.d {_:{AddItem:{tag:{AkarinPlus:{Type:"goddess_charm"}}}}} if data storage _index.d _.Item.tag.Reinforcement[{id:"life",lvl:2}] run function reinforcement:merge/life_plusplus

# Expensive
    execute if data storage _index.d {_:{AddItem:{tag:{AkarinPlus:{Type:"expensive_stone"}}}}} unless data storage _index.d _.Item.tag.Reinforcement[{id:"expensive"}] unless predicate reinforcement:armor run function reinforcement:merge/expensive

    execute if data storage _index.d {_:{AddItem:{tag:{AkarinPlus:{Type:"unfree_sword"}}}}} unless data storage _index.d _.Item.tag.Reinforcement[{id:"impact"}] unless predicate reinforcement:armor run function reinforcement:merge/impact

    execute if data storage _index.d {_:{AddItem:{tag:{AkarinPlus:{Type:"anti_pk"}}}}} unless data storage _index.d _.Item.tag.Reinforcement[{id:"counter"}] unless predicate reinforcement:armor run function reinforcement:merge/counter

    execute if data storage _index.d {_:{AddItem:{tag:{AkarinPlus:{Type:"utotem"}}}}} unless data storage _index.d _.Item.tag.Reinforcement[{id:"last_stand"}] unless predicate reinforcement:armor run function reinforcement:merge/last_stand

execute if data storage _index.d {_:{AddItem:{tag:{AkarinPlus:{Type:"ancient_pocket_watch"}}}}} unless data storage _index.d _.Item.tag.Reinforcement[{id:"ancient"}] unless predicate reinforcement:armor run function reinforcement:merge/ancient

execute if data storage _index.d {_:{AddItem:{tag:{AkarinPlus:{Type:"tall_bell"}}}}} unless data storage _index.d _.Item.tag.Reinforcement[{id:"high"}] run function reinforcement:merge/high

# Aqua
execute if data storage _index.d {_:{AddItem:{id:"minecraft:heart_of_the_sea"}}} unless data storage _index.d _.AddItem.tag.AkarinPlus unless data storage _index.d _.Item.tag.Reinforcement[{id:"aqua"}] run function reinforcement:merge/aqua

# Marine
execute if data storage _index.d {_:{AddItem:{id:"minecraft:heart_of_the_sea"}}} unless data storage _index.d _.AddItem.tag.AkarinPlus unless data storage _index.d _.Item.tag.Reinforcement[{id:"marine"}] if data storage _index.d _.Item.tag.Reinforcement[{id:"aqua"}] run function reinforcement:merge/marine

# MultiShot
execute if data storage _index.d {_:{AddItem:{id:"minecraft:bow"}}} unless data storage _index.d _.AddItem.tag.AkarinPlus unless data storage _index.d _.Item.tag.Reinforcement[{id:"multi_shot"}] run function reinforcement:merge/multi_shot

execute if data storage _index.d {_:{AddItem:{tag:{AkarinPlus:{Type:"proof_of_mining"}}}}} unless data storage _index.d _.Item.tag.Reinforcement[{id:"rash"}] unless predicate reinforcement:armor run function reinforcement:merge/rash

execute if data storage _index.d {_:{AddItem:{tag:{AkarinPlus:{Type:"deffence_charm"}}}}} unless data storage _index.d _.Item.tag.Reinforcement[{id:"defence"}] if predicate reinforcement:armor run function reinforcement:merge/defence
execute if data storage _index.d {_:{AddItem:{tag:{AkarinPlus:{Type:"defence_amulet"}}}}} if data storage _index.d _.Item.tag.Reinforcement[{id:"defence",lvl:1}] if predicate reinforcement:armor run function reinforcement:merge/defence_plus

execute if entity @s[tag=success] run function reinforcement:success