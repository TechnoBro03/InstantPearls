# Runs every tick

# Runs on owner of thrown enderpearl
execute as @e[type=ender_pearl,nbt={Item:{tag:{TP:1b}}}] on origin run function better_pearls:ray_cast/internal/cast