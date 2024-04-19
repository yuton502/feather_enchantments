#> feather_enchantments:enchantments/telekinesis/add_target
# tpするターゲットを追加します。
# 別のfunctionからも実行可能です。as, atを指定してから実行してください。

#declare tag feen.telekinesis.source
  tag @s add feen.telekinesis.source

execute as @e[type=item,distance=..6,predicate=feather_enchantments:observers/lazy_is_spawning_item] store success score @s feen.data at @s anchored eyes positioned ^ ^ ^ anchored feet as @a[tag=feen.telekinesis.source] facing entity @s eyes positioned as @s positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 if entity @s[distance=..0.35]
#declare tag feen.telekinesis.target
  tag @e[scores={feen.data=1}] add feen.telekinesis.target
  #tag @e[type=item,distance=..6,predicate=feather_enchantments:observers/lazy_is_spawning_item] add feen.telekinesis.target


data modify storage feather_enchantments: player.UUID set from entity @s UUID
execute as @e[type=item,tag=feen.telekinesis.target] run data modify entity @s Thrower set from storage feather_enchantments: player.UUID

tag @s remove feen.telekinesis.source
scoreboard players reset @e[scores={feen.data=0..}] feen.data

