# Gives level 5 pearl

recipe take @s better_pearls:fancy_pearl_v
advancement revoke @s only better_pearls:fancy_pearl_v
clear @s knowledge_book

give @s minecraft:ender_pearl{DIST:480,TP:1b,display:{Name:'{"text":"Fancy Pearl V","color":"aqua","italic": true}',Lore:['{"text":"240 Blocks"}']}}