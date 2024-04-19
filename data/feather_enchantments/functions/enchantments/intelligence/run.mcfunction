#> feather_enchantments:enchantments/intelligence/run
# intelligenceの効果を発動させます。

execute unless entity @s[predicate=feather_enchantments:intelligence/any] run return 0

execute if entity @s[predicate=feather_enchantments:intelligence/chance] at @s run function feather_enchantments:enchantments/intelligence/effect
