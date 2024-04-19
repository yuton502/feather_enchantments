#> feather_enchantments:feather_smithing_table/tick
# 実行元は必ずmarkerのfeen.smithing_table

# インベントリ変更検知
function feather_enchantments:feather_smithing_table/gui/is_changed

#execute store success entity @s data.is_clicked byte 1 as @a store success score @s feen.is_clicked run clear @s #feather_enchantments:used_gui{feather_enchantments:{clear:true}} 0
execute if data entity @s {data:{is_changed:true}} run function feather_enchantments:feather_smithing_table/gui/clicked
data modify storage feather_enchantments: feather_smithing_table.gui.apply set from storage feather_enchantments: feather_smithing_table.gui.merge.cannot
function feather_enchantments:feather_smithing_table/gui/set


# ブロックが破壊されたら削除
execute unless block ~ ~ ~ barrel run function feather_enchantments:feather_smithing_table/delete
scoreboard players set @a[scores={data.is_clicked=1..}] feen.is_clicked 0

#1tick前のItemsをコピー
data modify storage feather_enchantments: feather_smithing_table.PreviousItems set from block ~ ~ ~ Items