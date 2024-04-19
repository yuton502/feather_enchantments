#> feather_enchantments:feather_smithing_table/set
# 専用の鍛冶台をセットします。

#define tag feen.smithing_table

execute as @e[type=armor_stand,distance=..6,limit=1,tag=feen.smithing_table] at @s run summon marker ~ ~ ~ {NoGravity:1b,Tags:["feen.smithing_table"],data:{mode:0}}
execute as @e[type=armor_stand,distance=..6,limit=1,tag=feen.smithing_table] at @s run setblock ~ ~ ~ barrel[facing=up]{CustomName:'[{"text": "鍛冶台 - "},{"text": "合成モード","color": "dark_green"}]'}

data modify storage feather_enchantments: feather_smithing_table.gui.apply set from storage feather_enchantments: feather_smithing_table.gui.merge.cannot
execute as @e[type=armor_stand,distance=..6,limit=1,tag=feen.smithing_table] at @s run function feather_enchantments:feather_smithing_table/gui/set

kill @e[type=armor_stand,distance=..6,limit=1,tag=feen.smithing_table]
advancement revoke @s only feather_enchantments:used_feather_smithing_table