# These functions run AT the end of the ray (where it hits the max steps) AS the player

# Ray is already stopped

# Teleport to block
execute run tp @s ~ ~ ~

particle portal ~ ~ ~ 0.5 .5 .5 0 50 force
playsound entity.enderman.teleport player @a ~ ~ ~