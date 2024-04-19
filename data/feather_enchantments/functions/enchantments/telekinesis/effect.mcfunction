#> feather_enchantments:enchantments/telekinesis/effect
# アイテムを引き寄せます。

execute as @e[type=item,tag=feen.telekinesis.target,scores={feen.data=2..}] on origin at @s as @e[type=item,tag=feen.telekinesis.target,scores={feen.data=2..}] run tp ~ ~ ~
execute as @e[type=item,tag=feen.telekinesis.target,scores={feen.data=2..}] run data modify entity @s PickupDelay set value 1s

scoreboard players add @e[type=item,tag=feen.telekinesis.target] feen.data 1
#execute as @e[type=item,tag=feen.telekinesis.target,scores={feen.data=2..}] on origin run tag @s[tag=feen.telekinesis.source] remove feen.telekinesis.source

execute if entity @e[type=item,tag=feen.telekinesis.target] run schedule function feather_enchantments:enchantments/telekinesis/effect 1t