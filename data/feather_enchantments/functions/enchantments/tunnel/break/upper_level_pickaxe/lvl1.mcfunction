#> feather_enchantments:enchantments/tunnel/break/upper_level_pickaxe/lvl1

execute positioned ~ ~-1 ~ if block ~ ~ ~ #feather_enchantments:upper_level_pickaxe run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~ ~-1 ~ if block ~ ~ ~ #feather_enchantments:upper_level_pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~ if block ~ ~ ~ #feather_enchantments:upper_level_pickaxe run function feather_enchantments:enchantments/tunnel/telekinesis
