#> feather_enchantments:enchantments/anti_venom/run
# anti venomを発動させるためのscheduleを実行します。
#
# @within
#   advancement feather_enchantments:anti_venom

#declare tag feen.anti_venom
tag @s add feen.anti_venom

# 効果発動
execute as @a[tag=feen.anti_venom,advancements={feather_enchantments:anti_venom={has_anti_venom_lvl1=true}}] at @s run function feather_enchantments:enchantments/anti_venom/effect_lvl1
execute as @a[tag=feen.anti_venom,advancements={feather_enchantments:anti_venom={has_anti_venom_lvl2=true}}] at @s run function feather_enchantments:enchantments/anti_venom/effect_lvl2
execute as @a[tag=feen.anti_venom,advancements={feather_enchantments:anti_venom={has_anti_venom_lvl3=true}}] at @s run function feather_enchantments:enchantments/anti_venom/effect_lvl3

# 継続して着ている場合はループ、それ以外はadvancement, tagの削除
execute as @a[predicate=feather_enchantments:anti_venom/any] run schedule function feather_enchantments:enchantments/anti_venom/run 4t
execute as @a[tag=feen.anti_venom,predicate=!feather_enchantments:anti_venom/any] run function feather_enchantments:enchantments/anti_venom/remove