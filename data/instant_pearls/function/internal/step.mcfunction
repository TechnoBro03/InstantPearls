# Run at_step
function instant_pearls:custom/at_step

# Decrease step
scoreboard players remove @s instant_pearls.step 1

# Detect reaching the end of ray (max step was reached)
execute if score @s instant_pearls.step matches 0 run function instant_pearls:custom/at_end

# Detect if ray hits a block
execute unless block ~ ~ ~ #instant_pearls:ray_transparent run function instant_pearls:custom/at_block

# Detect if ray hits entity
# execute as @e[dx=0,tag=!instant_pearls.cast] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,tag=!instant_pearls.cast] run function instant_pearls:custom/at_entity

# Recursive loop
# Default: Step Distance = 0.5 (100 maxSteps * 0.5 stepDistant = 50 blocks)
execute if score @s instant_pearls.step matches 1.. as @s[tag=!instant_pearls.stop] positioned ^ ^ ^0.5 run function instant_pearls:internal/step