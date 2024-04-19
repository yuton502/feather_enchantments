#> feather_enchantments:observers/has_enchantments/detect
# 特定のエンチャントを手に持つことを監視します。
# 発見した場合、ここのfunctionが実行されます。

execute as @a[predicate=feather_enchantments:observers/has_tools_enchantments] run function feather_enchantments:observers/use_tools/detect
execute as @a[predicate=feather_enchantments:observers/has_bows_enchantments] run function feather_enchantments:observers/shot_bows/detect