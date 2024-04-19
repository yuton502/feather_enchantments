#> feather_enchantments:enchantments/explosive/run

execute as @e[type=arrow,distance=..7,predicate=feather_enchantments:observers/lazy_is_spawning_arrow] store success score @s feen.data on origin if entity @s[tag=feen.shot_bows.player,predicate=feather_enchantments:explosive/any]

#declare tag feen.explosive.target
  tag @e[type=arrow,scores={feen.data=1}] add feen.explosive.target
execute as @e[type=arrow,scores={feen.data=0}] run return 0

#declare tag feen.ticking_arrow.target
  tag @e[type=arrow,tag=feen.explosive.target] add feen.ticking_arrow.target

#declare tag feen.explosive.lvl1
  execute if entity @s[tag=feen.shot_bows.player,predicate=feather_enchantments:explosive/1] run tag @e[type=arrow,tag=feen.explosive.target] add feen.explosive.lvl1
#declare tag feen.explosive.lvl2
  execute if entity @s[tag=feen.shot_bows.player,predicate=feather_enchantments:explosive/2] run tag @e[type=arrow,tag=feen.explosive.target] add feen.explosive.lvl2
scoreboard players reset @e[type=arrow,distance=..7,scores={feen.data=0..}] feen.data