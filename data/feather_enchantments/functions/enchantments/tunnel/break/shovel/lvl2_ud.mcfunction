#> feather_enchantments:enchantments/tunnel/break/shovel/lvl2_ud

execute positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:mineable/shovel run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:mineable/shovel run setblock ~ ~ ~ air destroy
execute positioned ~1 ~ ~-1 if block ~ ~ ~ #minecraft:mineable/shovel run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~1 ~ ~-1 if block ~ ~ ~ #minecraft:mineable/shovel run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:mineable/shovel run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:mineable/shovel run setblock ~ ~ ~ air destroy
