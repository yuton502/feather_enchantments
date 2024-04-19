#> feather_enchantments:enchantments/tunnel/break/upper_level_pickaxe/lvl3_ns

execute positioned ~-1 ~ ~ if block ~ ~ ~ #feather_enchantments:upper_level_pickaxe run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~ ~ if block ~ ~ ~ #feather_enchantments:upper_level_pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ #feather_enchantments:upper_level_pickaxe run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ #feather_enchantments:upper_level_pickaxe run setblock ~ ~ ~ air destroy

execute positioned ~ ~1 ~ if block ~ ~ ~ #feather_enchantments:upper_level_pickaxe run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~ ~1 ~ if block ~ ~ ~ #feather_enchantments:upper_level_pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~1 ~1 ~ if block ~ ~ ~ #feather_enchantments:upper_level_pickaxe run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~1 ~1 ~ if block ~ ~ ~ #feather_enchantments:upper_level_pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #feather_enchantments:upper_level_pickaxe run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #feather_enchantments:upper_level_pickaxe run setblock ~ ~ ~ air destroy

function feather_enchantments:enchantments/tunnel/break/upper_level_pickaxe/lvl2_ns