execute as @e[type=arrow,distance=..5,nbt={life:0s}] store success score @s feen.data on origin if entity @s[tag=feen.shot_bows.player]
execute as @e[scores={feen.data=1}] at @s run say heeellooooo!