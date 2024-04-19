#> feather_enchantments:enchantments/torcher/run

execute as @e[type=arrow,distance=..7,predicate=feather_enchantments:observers/lazy_is_spawning_arrow] store success score @s feen.data on origin if entity @s[tag=feen.shot_bows.player,predicate=feather_enchantments:torcher/any]

#declare tag feen.torcher.target
  tag @e[type=arrow,scores={feen.data=1}] add feen.torcher.target
execute as @e[type=arrow,scores={feen.data=0}] run return 0

#declare tag feen.ticking_arrow.target
  tag @e[type=arrow,tag=feen.torcher.target] add feen.ticking_arrow.target

#declare tag feen.torcher.display
  summon minecraft:item_display ~ ~ ~ {Tags:["feen.torcher.display"],item:{id:"minecraft:torch",Count:1b}}
execute as @e[type=arrow,tag=feen.torcher.target] run ride @e[type=item_display,tag=feen.torcher.display,limit=1,sort=nearest] mount @s
say yes
scoreboard players reset @e[type=arrow,scores={feen.data=0..}] feen.data