# These functions run AT the ray (where it hit a block) AS the player

# Stops the ray when it hits block (Recommended for efficiency)
tag @s add instant_pearls.stop

# Summon an area effect cloud at the teleport location
execute positioned ^ ^ ^-0.75 align y run summon area_effect_cloud ~ ~.1 ~ \
    {NoGravity:1b,Duration:2,Tags:["instant_pearls.marker"]}

# "Teleport" the player to the area effect cloud
ride @s mount @n[type=area_effect_cloud,tag=instant_pearls.marker]

particle portal ~ ~ ~ 0.5 .5 .5 0 50 force
playsound entity.enderman.teleport player @a ~ ~ ~