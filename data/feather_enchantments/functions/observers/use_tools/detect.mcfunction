#> feather_enchantments:observers/use_tools/detect
# ツールの使用を監視します。
# ツールが使用された場合、#feather_enchantments:use_toolsを実行します。
#
# @within
#   feather_enchantments:main

execute as @a[predicate=feather_enchantments:observers/use_any_tools] at @s run function #feather_enchantments:use_tools