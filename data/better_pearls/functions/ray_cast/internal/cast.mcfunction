# Run at start of cast
execute at @s run function better_pearls:ray_cast/hit/hit_start

# Execute from eyes rotated as player
execute at @s anchored eyes positioned ^ ^ ^ run function better_pearls:ray_cast/internal/step

# Remove all tags
tag @s remove hitBlock
tag @s remove hitEnd
tag @s remove stopRay