#> feather_enchantments:enchantments/tunnel/run
# tunnelの効果を発動させます。

#スニーク中は効果を発動しない
execute as @s[predicate=feather_enchantments:observers/is_sneaking] run return 0

#declare tag feen.tunnel.target
  tag @e[type=item,distance=..6,limit=1,nbt={Age:0s}] add feen.tunnel.target

# プレイヤーの向きをタグとして追加
function feather_enchantments:observers/player_rotate/add

# setblockの演出のため、一時的にドロップを無効
gamerule doTileDrops false

# 適性ツールごとに分岐
# ツルハシはダイヤの採掘レベルの場合と分ける
execute as @s[predicate=feather_enchantments:observers/has_axes,predicate=feather_enchantments:tunnel/any] at @e[type=item,tag=feen.tunnel.target] run function feather_enchantments:enchantments/tunnel/break/axe/effect
execute as @s[predicate=feather_enchantments:observers/has_shovels,predicate=feather_enchantments:tunnel/any] at @e[type=item,tag=feen.tunnel.target] run function feather_enchantments:enchantments/tunnel/break/shovel/effect
execute as @s[predicate=feather_enchantments:observers/has_lower_level_pickaxes,predicate=feather_enchantments:tunnel/any] at @e[type=item,tag=feen.tunnel.target] run function feather_enchantments:enchantments/tunnel/break/lower_level_pickaxe/effect
execute as @s[predicate=feather_enchantments:observers/has_upper_level_pickaxes,predicate=feather_enchantments:tunnel/any] at @e[type=item,tag=feen.tunnel.target] run function feather_enchantments:enchantments/tunnel/break/upper_level_pickaxe/effect

# タグ削除・ドロップ有効
tag @e[tag=feen.tunnel.target] remove feen.tunnel.target
gamerule doTileDrops true