scoreboard players add @s AkarinPlus.Combo 1
scoreboard players set @s AkarinPlus.ComboTick 60

execute if predicate akarin_plus:reinforcement/rash run function akarin_plus:reinforcement/rash

advancement revoke @s only akarin_plus:handler/player_hurt_entity