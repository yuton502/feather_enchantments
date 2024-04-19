#> feather_enchantments:observers/shot_bows/detect
# ツールの使用を監視します。
# ツールが使用された場合、#feather_enchantments:use_toolsを実行します。
#
# @within
#   feather_enchantments:main

#declare tag feen.shot_bows.player
  tag @s add feen.shot_bows.player

execute as @a[predicate=feather_enchantments:observers/shot_bows] at @s run function #feather_enchantments:shot_bows

tag @s[tag=feen.shot_bows.player] remove feen.shot_bows.player