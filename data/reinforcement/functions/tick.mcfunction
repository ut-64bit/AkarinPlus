tag @e[tag=base] remove base
tag @e[tag=add] remove add

execute at @a as @e[type=item,distance=..10] at @s if block ~ ~-0.1 ~ anvil if data entity @s {Item:{Count:1b}} run function reinforcement:tag

execute as @e[tag=base] at @s if entity @e[tag=add,distance=..1.5] run function reinforcement:main