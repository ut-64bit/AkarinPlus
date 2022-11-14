#> akarin_plus:tick/60t_interval
# @within function
#   akarin_plus:load
#   akarin_plus:tick/60t_interval

    execute as @a if predicate akarin_plus:have/life_charm at @s as @e[distance=..3] run effect give @s regeneration 5 1 false
    execute as @a if predicate akarin_plus:have/goddess_charm at @s as @e[distance=..3] run effect give @s regeneration 5 4 false

# RI:Life
    execute as @a if predicate akarin_plus:reinforcement/life run effect give @s regeneration 5 0 false
    execute as @a if predicate akarin_plus:reinforcement/life_plus run effect give @s regeneration 5 2 false
    execute as @a if predicate akarin_plus:reinforcement/life_plusplus run effect give @s regeneration 5 4 false

    execute as @a if predicate akarin_plus:have/nutrition_helmet run effect give @s saturation 5 1 false

# RI:Healthy
    execute as @a if predicate akarin_plus:reinforcement/healthy run effect give @s saturation 5 0 false
    execute as @a if predicate akarin_plus:reinforcement/healthy_plus run effect give @s saturation 5 2 false

schedule function akarin_plus:tick/60t_interval 3s