# Set players step to max step value
# scoreboard players operation @s instant_pearls.step = .max instant_pearls.step

# Give player cast tag
# tag @s add instant_pearls.cast

# Run at_start
execute at @s anchored eyes positioned ^ ^ ^ run function instant_pearls:custom/at_start

# Execute from eyes rotated as player
execute at @s anchored eyes positioned ^ ^ ^ run function instant_pearls:internal/step

# Remove all tags
tag @s remove instant_pearls.stop
# tag @s remove instant_pearls.cast