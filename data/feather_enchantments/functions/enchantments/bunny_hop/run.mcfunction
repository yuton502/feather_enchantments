#> feather_enchantments:enchantments/bunny_hop/run
# bunny hopを発動させるためのscheduleを実行します。
#
# @within
#   advancement feather_enchantments:bunny_hop

#declare tag feen.bunny_hop
tag @s add feen.bunny_hop

say having fun bunny hop!

# 効果発動
execute as @a[tag=feen.bunny_hop,advancements={feather_enchantments:bunny_hop={has_bunny_hop_lvl1=true}}] at @s run function feather_enchantments:enchantments/bunny_hop/effect_lvl1
execute as @a[tag=feen.bunny_hop,advancements={feather_enchantments:bunny_hop={has_bunny_hop_lvl2=true}}] at @s run function feather_enchantments:enchantments/bunny_hop/effect_lvl2
execute as @a[tag=feen.bunny_hop,advancements={feather_enchantments:bunny_hop={has_bunny_hop_lvl3=true}}] at @s run function feather_enchantments:enchantments/bunny_hop/effect_lvl3

# 継続して着ている場合はループ、それ以外はadvancement, tagの削除
execute as @a[predicate=feather_enchantments:bunny_hop/any] run schedule function feather_enchantments:enchantments/bunny_hop/run 20t
execute as @a[tag=feen.bunny_hop,predicate=!feather_enchantments:bunny_hop/any] run function feather_enchantments:enchantments/bunny_hop/remove