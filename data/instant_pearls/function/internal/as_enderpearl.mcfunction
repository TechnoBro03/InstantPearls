# Get distance from enderpearl
execute store result score .distance instant_pearls.step run data get entity @s Item.components.minecraft:custom_data.distance
scoreboard players operation .distance instant_pearls.step *= .2 instant_pearls.step

# Store in players step
execute on origin run scoreboard players operation @s instant_pearls.step = .distance instant_pearls.step

# Kill enderpearl
kill @s

# Run ray cast as player
execute on origin run function instant_pearls:internal/cast_ray