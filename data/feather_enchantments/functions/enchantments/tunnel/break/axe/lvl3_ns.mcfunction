#> feather_enchantments:enchantments/tunnel/break/axe/lvl3_ns

execute positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:mineable/axe run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:mineable/axe run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ #minecraft:mineable/axe run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ #minecraft:mineable/axe run setblock ~ ~ ~ air destroy

execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:mineable/axe run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:mineable/axe run setblock ~ ~ ~ air destroy
execute positioned ~1 ~1 ~ if block ~ ~ ~ #minecraft:mineable/axe run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~1 ~1 ~ if block ~ ~ ~ #minecraft:mineable/axe run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #minecraft:mineable/axe run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #minecraft:mineable/axe run setblock ~ ~ ~ air destroy

function feather_enchantments:enchantments/tunnel/break/axe/lvl2_ns