# Runs every tick

# Remove jump boost
execute as @a[predicate=instant_pearls:jump_boost] run effect clear @s jump_boost

# As owner of underpearl
execute as @e[type=ender_pearl] if data entity @s Item.components.minecraft:custom_data.distance on origin run function instant_pearls:internal/cast_ray