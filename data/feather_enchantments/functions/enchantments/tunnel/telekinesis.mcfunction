#> feather_enchantments:enchantments/tunnel/telekinesis

execute if entity @s[predicate=feather_enchantments:telekinesis/any] as @e[type=item,distance=..2.5,predicate=feather_enchantments:observers/lazy_is_spawning_item] run tag @s add feen.telekinesis.target
