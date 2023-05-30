# These functions run AT the original casting location AS the player
execute store result score @s rayStep run data get entity @e[type=ender_pearl,nbt={Item:{tag:{TP:1b}}},sort=nearest,limit=1] Item.tag.DIST
kill @e[type=ender_pearl,nbt={Item:{tag:{TP:1b}}},sort=nearest,limit=1]

execute run particle portal ~ ~ ~ 0.5 .5 .5 0 50 force