#> feather_enchantments:enchantments/torcher/mob_hit
# Mobに当たった際に実行します。
# 基本advancementから実行されます。

#事前準備
tag @s add feen.shot_bows.player

execute as @e[nbt={HurtTime:10s}] store success score @s feen.data on attacker if entity @s[tag=feen.shot_bows.player,predicate=feather_enchantments:torcher/any]
#declare tag feen.torcher.hit
  execute as @e[scores={feen.data=1}] run tag @s add feen.torcher.hit

#効果
execute as @e[tag=feen.torcher.hit] run data modify entity @s Fire set value 100s

#タグなど削除
tag @e[tag=feen.torcher.hit] remove feen.torcher.hit
kill @e[tag=feen.torcher.display]

scoreboard players reset @e[scores={feen.data=0..}] feen.data

tag @s remove feen.shot_bows.player
advancement revoke @s only feather_enchantments:torcher