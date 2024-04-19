#> feather_enchantments:enchantments/tunnel/break/shovel/effect


execute as @s[predicate=feather_enchantments:tunnel/1] run function feather_enchantments:enchantments/tunnel/break/shovel/lvl1

execute as @s[tag=feen.player.rotate.we,predicate=feather_enchantments:tunnel/2] run function feather_enchantments:enchantments/tunnel/break/shovel/lvl2_we
execute as @s[tag=feen.player.rotate.ns,predicate=feather_enchantments:tunnel/2] run function feather_enchantments:enchantments/tunnel/break/shovel/lvl2_ns
execute as @s[tag=feen.player.rotate.ud,predicate=feather_enchantments:tunnel/2] run function feather_enchantments:enchantments/tunnel/break/shovel/lvl2_ud

execute as @s[tag=feen.player.rotate.we,predicate=feather_enchantments:tunnel/3] run function feather_enchantments:enchantments/tunnel/break/shovel/lvl3_we
execute as @s[tag=feen.player.rotate.ns,predicate=feather_enchantments:tunnel/3] run function feather_enchantments:enchantments/tunnel/break/shovel/lvl3_ns
execute as @s[tag=feen.player.rotate.ud,predicate=feather_enchantments:tunnel/3] run function feather_enchantments:enchantments/tunnel/break/shovel/lvl3_ud

function feather_enchantments:enchantments/tunnel/telekinesis
