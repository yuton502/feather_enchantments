#declare tag feen.player.rotate.ns
  tag @s[y_rotation=135.0..179.99,x_rotation=-34.99..34.99] add feen.player.rotate.ns
  tag @s[y_rotation=-179.99..-135.0,x_rotation=-34.99..34.99] add feen.player.rotate.ns
  tag @s[y_rotation=-44.99..44.99,x_rotation=-34.99..34.99] add feen.player.rotate.ns
#declare tag feen.player.rotate.we
  tag @s[y_rotation=45.0..134.99,x_rotation=-34.99..34.99] add feen.player.rotate.we
  tag @s[y_rotation=226.0..314.0,x_rotation=-34.99..34.99] add feen.player.rotate.we
#declare tag feen.player.rotate.ud
  tag @s[x_rotation=35.0..90.0] add feen.player.rotate.ud
  tag @s[x_rotation=-90.0..-34.99] add feen.player.rotate.ud

schedule function feather_enchantments:observers/player_rotate/remove 1t