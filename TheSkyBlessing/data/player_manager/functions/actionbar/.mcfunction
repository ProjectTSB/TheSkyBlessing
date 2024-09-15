#> player_manager:actionbar/
#
#
#
# @within function core:tick/player/

# 出力
    # survivalかadventure ( Absorption, MiniBar, MainBar )
        title @s[gamemode=!creative,gamemode=!spectator] actionbar [{"text":""},{"storage":"player_manager:absorption","nbt":"AbsorptionMessage[]","interpret": true,"separator":""},{"storage":"asset:artifact","nbt":"MiniBarsMessage[]","interpret":true,"separator":""},{"storage":"asset:artifact","nbt":"MainBarMessage[]","interpret":true,"separator":""}]
    # spectator ( MainBar )
        title @s[gamemode=spectator] actionbar [{"text":""},{"storage":"asset:artifact","nbt":"MainBarMessage[]","interpret":true,"separator":""}]
    # creative ( MiniBar, MainBar )
        title @s[gamemode=creative] actionbar [{"text":""},{"storage":"asset:artifact","nbt":"MiniBarsMessage[]","interpret":true,"separator":""},{"storage":"asset:artifact","nbt":"MainBarMessage[]","interpret":true,"separator":""}]

# リセット
    data remove storage player_manager:absorption AbsorptionMessage
    data remove storage asset:artifact MiniBarsMessage
    data remove storage asset:artifact MainBarMessage
