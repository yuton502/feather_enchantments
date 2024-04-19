#> feather_enchantments:enchantments/torcher/effect

execute unless block ~1 ~ ~ air if block ~ ~-0.2 ~ air run fill ~ ~ ~ ~ ~ ~ wall_torch[facing=west] keep
execute unless block ~-1 ~ ~ air if block ~ ~-0.2 ~ air run fill ~ ~ ~ ~ ~ ~ wall_torch[facing=east] keep
execute unless block ~ ~ ~1 air if block ~ ~-0.2 ~ air run fill ~ ~ ~ ~ ~ ~ wall_torch[facing=north] keep
execute unless block ~ ~ ~-1 air if block ~ ~-0.2 ~ air run fill ~ ~ ~ ~ ~ ~ wall_torch[facing=south] keep
execute unless block ~ ~-1 ~ air run fill ~ ~ ~ ~ ~ ~ torch keep

execute unless block ~ ~ ~ #feather_enchantments:torch run loot spawn ~ ~ ~ loot minecraft:blocks/torch

execute as @s on passengers run kill @s
kill @s
