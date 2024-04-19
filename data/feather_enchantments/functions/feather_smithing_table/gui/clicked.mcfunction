#> feather_enchantments:feather_smithing_table/gui/clicked

execute if data entity @s {data:{mode:0}} run data modify storage feather_enchantments: feather_smithing_table.gui.apply set from storage feather_enchantments: feather_smithing_table.gui.merge.cannot
function feather_enchantments:feather_smithing_table/gui/set

say clicked!

clear @a #feather_enchantments:used_gui{feather_enchantments:{clear:true}}
data modify entity @s data.is_changed set value 0b