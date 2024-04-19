#> feather_enchantments:feather_smithing_table/gui/set

data modify block ~ ~ ~ Items append from storage feather_enchantments: feather_smithing_table.gui.apply[-1]
data remove storage feather_enchantments: feather_smithing_table.gui.apply[-1]

execute if data storage feather_enchantments: feather_smithing_table.gui.apply[-1] run function feather_enchantments:feather_smithing_table/gui/set