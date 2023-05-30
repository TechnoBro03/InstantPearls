# Gives level 1 pearl

recipe take @s better_pearls:fancy_pearl_i
advancement revoke @s only better_pearls:fancy_pearl_i
clear @s knowledge_book

give @s minecraft:ender_pearl{DIST:30,TP:1b,display:{Name:'{"text":"Fancy Pearl I","color":"aqua","italic": true}',Lore:['{"text":"15 Blocks"}']}}