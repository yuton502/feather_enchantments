#> feather_enchantments:enchantments/timber/effect
# 原木の破壊をします。
# Fast Leaf Decay(Vanilla Tweaks)が導入されている場合、葉も破壊します。

execute positioned ~ ~ ~ if block ~ ~ ~ #feather_enchantments:log_like run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~ ~ ~ if block ~ ~ ~ #feather_enchantments:log_like run setblock ~ ~ ~ air destroy

function feather_enchantments:enchantments/timber/api

scoreboard players add @e[type=item,tag=feen.timber.target] feen.data 1

#Telekinesisに対応する
execute if entity @s[predicate=feather_enchantments:telekinesis/any] as @e[type=item,distance=..0.5,limit=2,sort=arbitrary,nbt={Age:0s}] run tag @s add feen.telekinesis.target

execute if entity @e[type=item,tag=feen.timber.target,scores={feen.data=0..64}] run function feather_enchantments:enchantments/timber/search_blocks
