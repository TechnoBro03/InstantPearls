# These functions run AT the ray (where it hit a block) AS the player

# Stops the ray when it hits block (Recommended for efficiency)
tag @s add stopRay

effect give @s jump_boost 1 255 true
tp @s ^ ^ ^-0.75
particle portal ~ ~ ~ 0.5 .5 .5 0 50 force
playsound entity.enderman.teleport player @s