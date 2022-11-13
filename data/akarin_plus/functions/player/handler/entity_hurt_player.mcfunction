execute if predicate akarin_plus:reinforcement/damage_boost_speed run effect give @s speed 3 2
execute if predicate akarin_plus:reinforcement/counter run effect give @s strength 1 14
execute if score @s AkarinPlus.CoolTime matches ..0 if predicate akarin_plus:have/best_item run function akarin_plus:player/use/best_item

advancement revoke @s only akarin_plus:handler/entity_hurt_player