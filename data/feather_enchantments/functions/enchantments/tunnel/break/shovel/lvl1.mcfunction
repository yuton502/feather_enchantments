#> feather_enchantments:enchantments/tunnel/break/shovel/lvl1

execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:mineable/shovel run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:mineable/shovel run setblock ~ ~ ~ air destroy