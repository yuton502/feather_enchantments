#> feather_enchantments:enchantments/explosive/mob_hit
# Mobに当たった際に実行します。
# 基本advancementから実行されます。

#事前準備
tag @s add feen.shot_bows.player

execute as @e[nbt={HurtTime:10s}] store success score @s feen.data on attacker if entity @s[tag=feen.shot_bows.player,predicate=feather_enchantments:explosive/any]
#declare tag feen.explosive.hit
  execute as @e[scores={feen.data=1}] run tag @s add feen.explosive.hit

#効果
execute if entity @s[tag=feen.shot_bows.player,predicate=feather_enchantments:explosive/1] as @e[tag=feen.explosive.hit] at @s run function feather_enchantments:enchantments/explosive/effect_lvl1
execute if entity @s[tag=feen.shot_bows.player,predicate=feather_enchantments:explosive/2] as @e[tag=feen.explosive.hit] at @s run function feather_enchantments:enchantments/explosive/effect_lvl2

#タグなど削除
tag @e[tag=feen.explosive.hit] remove feen.explosive.hit

scoreboard players reset @e[scores={feen.data=0..}] feen.data

tag @s remove feen.shot_bows.player
advancement revoke @s only feather_enchantments:explosive