# Gives level 2 pearl

recipe take @s better_pearls:fancy_pearl_ii
advancement revoke @s only better_pearls:fancy_pearl_ii
clear @s knowledge_book

give @s minecraft:ender_pearl{DIST:60,TP:1b,display:{Name:'{"text":"Fancy Pearl II","color":"aqua","italic": true}',Lore:['{"text":"30 Blocks"}']}}