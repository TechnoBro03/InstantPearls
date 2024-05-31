# These commands run AT the original casting location AS the player

# Get distance from enderpearl
execute store result score @s instant_pearls.step as @e[type=ender_pearl,sort=nearest,limit=1] run data get entity @s Item.components.minecraft:custom_data.distance
kill @e[type=ender_pearl,sort=nearest,limit=1]

# Particles
execute run particle portal ~ ~ ~ 0.5 .5 .5 0 50 force