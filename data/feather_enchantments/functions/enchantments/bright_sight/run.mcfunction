#> feather_enchantments:enchantments/bright_sight/run
# Bright Sightを発動させるためのscheduleを実行します。
#
# @within
#   advancement feather_enchantments:bright_sight

#declare tag feen.bright_sight
tag @s add feen.bright_sight

# 効果発動
execute as @a[tag=feen.bright_sight] at @s run function feather_enchantments:enchantments/bright_sight/effect

# 継続して着ている場合はループ、それ以外はadvancement, tagの削除
execute as @a[predicate=feather_enchantments:bright_sight/any] run schedule function feather_enchantments:enchantments/bright_sight/run 20t
execute as @a[tag=feen.bright_sight,predicate=!feather_enchantments:bright_sight/any] run function feather_enchantments:enchantments/bright_sight/remove