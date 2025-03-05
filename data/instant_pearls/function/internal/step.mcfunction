# Run at_step
function instant_pearls:custom/at_step

# Detect reaching the end of ray (max step was reached)
execute if score @s instant_pearls.step matches 0 run function instant_pearls:custom/at_end
execute if score @s instant_pearls.step matches 0 run return 0

# Detect if ray hits a block
execute unless block ~ ~ ~ #instant_pearls:ray_transparent run function instant_pearls:custom/at_block

# Decrease step
scoreboard players remove @s instant_pearls.step 1

# Recursive loop
execute if entity @s[tag=!instant_pearls.stop] positioned ^ ^ ^0.5 run function instant_pearls:internal/step