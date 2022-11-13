effect give @s levitation 1 9 false
effect give @s resistance 1 3 false
particle flame ~ ~ ~ 0 0 0 1 2 force
playsound minecraft:item.firecharge.use master @s ~ ~ ~ 0.1 2
execute unless block ~ ~2.5 ~ #akarin_plus:air run summon tnt ~ ~2.5 ~