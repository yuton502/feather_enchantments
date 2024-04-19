#> feather_enchantments:enchantments/telekinesis/run
# telekinesisの効果を発動させます。

execute unless entity @s[predicate=feather_enchantments:telekinesis/any] run return 0

#declare tag feen.telekinesis.target
  execute at @s run function feather_enchantments:enchantments/telekinesis/add_target

schedule function feather_enchantments:enchantments/telekinesis/effect 2t