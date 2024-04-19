#> feather_enchantments:enchantments/tunnel/break/axe/lvl1

execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:mineable/axe run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:mineable/axe run setblock ~ ~ ~ air destroy