#> player_manager:actionbar/
#
#
#
# @within function core:tick/player/

# 出力
    # ( MainBar )
        title @s[gamemode=spectator] actionbar [{"text":""},{"storage":"asset:artifact","nbt":"MainBarMessage[]","interpret":true,"separator":""}]
    # ( MiniBar, MainBar )
        title @s[gamemode=!spectator] actionbar [{"text":""},{"storage":"asset:artifact","nbt":"MiniBarsMessage[]","interpret":true,"separator":""},{"storage":"asset:artifact","nbt":"MainBarMessage[]","interpret":true,"separator":""}]

# リセット
    data remove storage asset:artifact MiniBarsMessage
    data remove storage asset:artifact MainBarMessage
