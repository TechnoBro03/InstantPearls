# Gives level 3 pearl

recipe take @s better_pearls:fancy_pearl_iii
advancement revoke @s only better_pearls:fancy_pearl_iii
clear @s knowledge_book

give @s minecraft:ender_pearl{DIST:120,TP:1b,display:{Name:'{"text":"Fancy Pearl III","color":"aqua","italic": true}',Lore:['{"text":"60 Blocks"}']}}