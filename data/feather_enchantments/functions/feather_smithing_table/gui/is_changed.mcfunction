#> feather_enchantments:feather_smithing_table/gui/is_changed

data modify storage feather_enchantments: feather_smithing_table.NowItems set from block ~ ~ ~ Items
data remove storage feather_enchantments: feather_smithing_table.NowItems[{tag:{feather_enchantments:{clear:true}}}]
data remove storage feather_enchantments: feather_smithing_table.NowItems[{Slot:22b}]

data remove storage feather_enchantments: feather_smithing_table.PreviousItems[{tag:{feather_enchantments:{clear:true}}}]
data remove storage feather_enchantments: feather_smithing_table.PreviousItems[{Slot:22b}]

execute store success entity @s data.is_changed byte 1 run data modify storage feather_enchantments: feather_smithing_table.NowItems set from storage feather_enchantments: feather_smithing_table.PreviousItems
