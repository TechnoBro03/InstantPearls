# Shows ray
execute if score .showRay rayStep matches 1 run particle electric_spark ~ ~ ~ 0 0 0 0 1 force

# Detect hits
execute unless score @s rayStep matches 0.. run tag @s add hitEnd
execute positioned ~ ~-1 ~ at @e[distance=..1,type=!player] run tag @s add hitEntity
execute unless block ~ ~ ~ #better_pearls:ray_transparent run tag @s add hitBlock

# Runs appropriate hit functions
execute as @s[tag=hitEntity] run function better_pearls:ray_cast/hit/hit_entity
execute as @s[tag=hitBlock] run function better_pearls:ray_cast/hit/hit_block
execute as @s[tag=hitEnd] run function better_pearls:ray_cast/hit/hit_end

scoreboard players remove @s rayStep 1

# Default: Step Distance = 0.5
execute as @s[tag=!stopRay,tag=!hitEnd] positioned ^ ^ ^0.5 run function better_pearls:ray_cast/internal/step