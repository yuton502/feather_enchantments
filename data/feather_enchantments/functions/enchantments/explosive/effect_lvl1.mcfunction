#> feather_enchantments:enchantments/explosive/effect_lvl1


gamerule mobGriefing false
summon creeper ~ ~ ~ {ignited:true,Fuse:0s,ExplosionRadius:2,Invulnerable:true}

schedule function feather_enchantments:enchantments/explosive/after_tick 2t replace

kill @s[type=arrow]