#> feather_enchantments:enchantments/fast_swim/run
# Bright Sightを発動させるためのscheduleを実行します。
#
# @within
#   advancement feather_enchantments:fast_swim

#declare tag feen.fast_swim
tag @s add feen.fast_swim

# 効果発動
execute as @a[tag=feen.fast_swim] at @s run function feather_enchantments:enchantments/fast_swim/effect

# 継続して着ている場合はループ、それ以外はadvancement, tagの削除
execute as @a[predicate=feather_enchantments:fast_swim/any] run schedule function feather_enchantments:enchantments/fast_swim/run 20t
execute as @a[tag=feen.fast_swim,predicate=!feather_enchantments:fast_swim/any] run function feather_enchantments:enchantments/fast_swim/remove