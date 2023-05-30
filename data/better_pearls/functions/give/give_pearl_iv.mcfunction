# Gives level 4 pearl

recipe take @s better_pearls:fancy_pearl_iv
advancement revoke @s only better_pearls:fancy_pearl_iv
clear @s knowledge_book

give @s minecraft:ender_pearl{DIST:240,TP:1b,display:{Name:'{"text":"Fancy Pearl IV","color":"aqua","italic": true}',Lore:['{"text":"120 Blocks"}']}}