#> feather_enchantments:main
# 1tickごとに実行したいファンクションは必ずここに記述します。
# advancementからの実行以外は、全て元がここの記述になるようにします。

# 監視イベントを実行
function feather_enchantments:observers/has_enchantments/detect

#tick処理が必要なentityに対して実行
execute as @e[type=arrow,tag=feen.ticking_arrow.target] at @s run function #feather_enchantments:ticking_arrow

execute as @a at @s as @e[type=marker,tag=feen.smithing_table,distance=..6] at @s run function feather_enchantments:feather_smithing_table/tick

# tick処理の最後にスコアをリセットする
execute as @a[predicate=feather_enchantments:observers/use_any_tools] run function feather_enchantments:observers/use_tools/reset
execute as @a[predicate=feather_enchantments:observers/shot_bows] run function feather_enchantments:observers/shot_bows/reset