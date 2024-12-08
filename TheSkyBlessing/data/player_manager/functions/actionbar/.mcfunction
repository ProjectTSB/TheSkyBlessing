#> player_manager:actionbar/
#
#
#
# @within function core:tick/player/

# 出力
    # ( MainBar, Effect )
        title @s[gamemode=spectator] actionbar [{"text":""},{"storage":"asset:artifact","nbt":"MainBarMessage[]","interpret":true,"separator":""},{"storage":"asset:effect","nbt":"EffectMessage[]","interpret":true,"separator":""}]
    # ( MiniBar, MainBar, Effect )
        title @s[gamemode=!spectator] actionbar [{"text":""},{"storage":"asset:artifact","nbt":"MiniBarsMessage[]","interpret":true,"separator":""},{"storage":"asset:artifact","nbt":"MainBarMessage[]","interpret":true,"separator":""},{"storage":"asset:effect","nbt":"EffectMessage[]","interpret":true,"separator":""}]

# リセット
    data remove storage asset:artifact MiniBarsMessage
    data remove storage asset:artifact MainBarMessage
    data remove storage asset:effect EffectMessage
