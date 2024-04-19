#> feather_enchantments:enchantments/timber/run
# timberの効果を発動させます。

#スニーク中は効果を発動しない
execute as @s[predicate=feather_enchantments:observers/is_sneaking] run return 0


#declare tag feen.timber.target
  tag @e[type=item,distance=..6,limit=1,nbt={Age:0s}] add feen.timber.target

# setblockの演出のため、一時的にドロップを無効
gamerule doTileDrops false

execute as @s[predicate=feather_enchantments:observers/has_axes,predicate=feather_enchantments:timber/any] at @e[type=item,tag=feen.timber.target] run function feather_enchantments:enchantments/timber/effect


# タグ削除・ドロップ有効
tag @e[tag=feen.timber.target] remove feen.timber.target
gamerule doTileDrops true