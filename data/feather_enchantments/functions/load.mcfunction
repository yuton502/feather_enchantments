#> feather_enchantments:load

#define objective feen.data
  scoreboard objectives add feen.data dummy
#define objective feen.is_clicked
  scoreboard objectives add feen.is_clicked dummy

#use_toolsのイベントハンドラ用
scoreboard objectives add feen.use_tools.wooden_shovel minecraft.used:minecraft.wooden_shovel
scoreboard objectives add feen.use_tools.wooden_pickaxe minecraft.used:minecraft.wooden_pickaxe
scoreboard objectives add feen.use_tools.wooden_axe minecraft.used:minecraft.wooden_axe
scoreboard objectives add feen.use_tools.stone_shovel minecraft.used:minecraft.stone_shovel
scoreboard objectives add feen.use_tools.stone_pickaxe minecraft.used:minecraft.stone_pickaxe
scoreboard objectives add feen.use_tools.stone_axe minecraft.used:minecraft.stone_axe
scoreboard objectives add feen.use_tools.iron_shovel minecraft.used:minecraft.iron_shovel
scoreboard objectives add feen.use_tools.iron_pickaxe minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add feen.use_tools.iron_axe minecraft.used:minecraft.iron_axe
scoreboard objectives add feen.use_tools.diamond_shovel minecraft.used:minecraft.diamond_shovel
scoreboard objectives add feen.use_tools.diamond_pickaxe minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add feen.use_tools.diamond_axe minecraft.used:minecraft.diamond_axe
scoreboard objectives add feen.use_tools.golden_shovel minecraft.used:minecraft.golden_shovel
scoreboard objectives add feen.use_tools.golden_pickaxe minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add feen.use_tools.golden_axe minecraft.used:minecraft.golden_axe
scoreboard objectives add feen.use_tools.netherite_shovel minecraft.used:minecraft.netherite_shovel
scoreboard objectives add feen.use_tools.netherite_pickaxe minecraft.used:minecraft.netherite_pickaxe
scoreboard objectives add feen.use_tools.netherite_axe minecraft.used:minecraft.netherite_axe

#shot_bowsのイベントハンドラ用
scoreboard objectives add feen.shot_bows.bow minecraft.used:minecraft.bow
scoreboard objectives add feen.shot_bows.crossbow minecraft.used:minecraft.crossbow

#advancementの実行し直し
function #feather_enchantments:revoke

function feather_enchantments:feather_smithing_table/gui/init_set

tellraw @a ["",{"text":"[Feather Enchantments]","color":"aqua"},{"text":" Ver.α0.8\n","color":"green"},{"text":"Produced by ","color":"gray"},{"text":"yuton502","color":"white"}]
