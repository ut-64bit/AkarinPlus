#> asset:reinforcement/merge/_
# @within tag/function asset:reinforcement/merge

#> Unbreakable
# ____
# - Break
# - Unbreaking >= 10
# ____
# - Unbreakableが付与されます
    execute if data storage _index.d: {_:{AddItem:{id:"minecraft:reinforced_deepslate"}}} if score $Base.Ench.Unbreaking RI.Temporary matches 10.. unless data storage _index.d: {_:{Item:{tag:{Unbreakable:1b}}}} run function asset:reinforcement/merge/unbreakable

#> NightVision
# ____
# - Helmet
# ____
# - 暗視が付与されます
    execute if data storage _index.d: {_:{AddItem:{id:"minecraft:golden_carrot"}}} unless data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"night_vision"}] if predicate reinforcement:helmet run function asset:reinforcement/merge/night_vision

#> DamageBoost[Speed]
# ____
# - Boots
# ____
# - ダメージを受けたとき移動速度上昇3が付与されます
    execute if data storage _index.d: {_:{AddItem:{tag:{AkarinPlus:{Type:"speed_charm"}}}}} unless data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"damage_boost_speed"}] if predicate reinforcement:boots run function asset:reinforcement/merge/damage_boost_speed

#> Healthy
# ____
# - 満腹度回復が付与されます
    execute if data storage _index.d: {_:{AddItem:{tag:{AkarinPlus:{Type:"nutrition_helmet"}}}}} unless data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"healthy"}] run function asset:reinforcement/merge/healthy
    execute if data storage _index.d: {_:{AddItem:{tag:{AkarinPlus:{Type:"inf_light_food"}}}}} if data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"healthy",lvl:1}] run function asset:reinforcement/merge/healthy_plus

#> Life
# ____
# - 再生が付与されます
    execute if data storage _index.d: {_:{AddItem:{tag:{AkarinPlus:{Type:"life_charm"}}}}} unless data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"life"}] run function asset:reinforcement/merge/life
    execute if data storage _index.d: {_:{AddItem:{tag:{AkarinPlus:{Type:"health_amulet"}}}}} if data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"life",lvl:1}] run function asset:reinforcement/merge/life_plus
    execute if data storage _index.d: {_:{AddItem:{tag:{AkarinPlus:{Type:"goddess_charm"}}}}} if data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"life",lvl:2}] run function asset:reinforcement/merge/life_plusplus

#> Expensive
# ____
# - !Armor
# ____
# - ATK +50
    execute if data storage _index.d: {_:{AddItem:{tag:{AkarinPlus:{Type:"expensive_stone"}}}}} unless data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"expensive"}] unless predicate reinforcement:armor run function asset:reinforcement/merge/expensive

#> Impact
# ____
# - !Armor
# ____
# - Combo = 0
# 攻撃力上昇10が付与されます
    execute if data storage _index.d: {_:{AddItem:{tag:{AkarinPlus:{Type:"unfree_sword"}}}}} unless data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"impact"}] unless predicate reinforcement:armor run function asset:reinforcement/merge/impact

#> Counter
# ____
# - !Armor
# ____
# - ダメージを受けたとき攻撃力上昇15が付与されます
    execute if data storage _index.d: {_:{AddItem:{tag:{AkarinPlus:{Type:"anti_pk"}}}}} unless data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"counter"}] unless predicate reinforcement:armor run function asset:reinforcement/merge/counter

#> LastStand
# ____
# - !Armor
# ____
# - HP <= 5
# - トーテムを持っていない
# ATK +84%, 4ダメージ以下無効, 耐性4が付与されます
    execute if data storage _index.d: {_:{AddItem:{tag:{AkarinPlus:{Type:"utotem"}}}}} unless data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"last_stand"}] unless predicate reinforcement:armor run function asset:reinforcement/merge/last_stand

#> Ancient
# ____
# - !Armor
# ____
# - Unbreakableが付与されます
    execute if data storage _index.d: {_:{AddItem:{tag:{AkarinPlus:{Type:"ancient_pocket_watch"}}}}} unless data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"ancient"}] unless predicate reinforcement:armor run function asset:reinforcement/merge/ancient

#> High
# ____
# - ???
    execute if data storage _index.d: {_:{AddItem:{tag:{AkarinPlus:{Type:"tall_bell"}}}}} unless data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"high"}] run function asset:reinforcement/merge/high

#> Aqua
# ____
# - Helmet
# ____
# - コンジットパワー5が付与されます
    execute if data storage _index.d: {_:{AddItem:{id:"minecraft:heart_of_the_sea"}}} unless data storage _index.d: _.AddItem.tag.AkarinPlus unless data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"aqua"}] run function asset:reinforcement/merge/aqua

#> Marine
# ____
# - Helmet
# - Aqua
# ____
# - イルカの好意5が付与されます
    execute if data storage _index.d: {_:{AddItem:{id:"minecraft:heart_of_the_sea"}}} unless data storage _index.d: _.AddItem.tag.AkarinPlus unless data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"marine"}] if data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"aqua"}] run function asset:reinforcement/merge/marine

#> MultiShot
# ____
# - Bow
# ____
# - 矢が同時に3本打てるようになります
    execute if data storage _index.d: {_:{AddItem:{id:"minecraft:bow"}}} unless data storage _index.d: _.AddItem.tag.AkarinPlus if data storage _index.d: {_:{BaseItem:{id:"minecraft:bow"}}} unless data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"multi_shot"}] run function asset:reinforcement/merge/multi_shot

#> Homing
# ____
# - Bow
# ____
# - 矢が付近のMobを追跡するようになります
    execute if data storage _index.d: {_:{AddItem:{id:"minecraft:shulker_shell"}}} unless data storage _index.d: _.AddItem.tag.AkarinPlus if data storage _index.d: {_:{BaseItem:{id:"minecraft:bow"}}} unless data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"homing"}] run function asset:reinforcement/merge/homing

#> Homing
# ____
# - Bow
# ____
# - 矢が付近のMobを追跡するようになります
    execute if data storage _index.d: {_:{AddItem:{id:"minecraft:end_crystal"}}} unless data storage _index.d: _.AddItem.tag.AkarinPlus if data storage _index.d: {_:{BaseItem:{id:"minecraft:bow"}}} unless data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"explosion"}] run function asset:reinforcement/merge/explosion

#> Rush
# ____
# - !Armor
# ____
# - Comboに応じて攻撃力と攻撃速度が上がります
    execute if data storage _index.d: {_:{AddItem:{tag:{AkarinPlus:{Type:"proof_of_mining"}}}}} unless data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"rush"}] unless predicate reinforcement:armor run function asset:reinforcement/merge/rush

#> Defence
# ____
# - Armor
# ____
# - DF +3*lvl
    execute if data storage _index.d: {_:{AddItem:{tag:{AkarinPlus:{Type:"deffence_charm"}}}}} unless data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"defence"}] if predicate reinforcement:armor run function asset:reinforcement/merge/defence
    execute if data storage _index.d: {_:{AddItem:{tag:{AkarinPlus:{Type:"defence_amulet"}}}}} if data storage _index.d: _.BaseItem.tag.Reinforcement[{id:"defence",lvl:1}] if predicate reinforcement:armor run function asset:reinforcement/merge/defence_plus