#> player_manager:actionbar/
#
#
#
# @within function core:tick/player/

# 出力
    title @s actionbar [\
        {"text":""},\
        {"storage":"player_manager:absorption","nbt":"AbsorptionMessage[]","interpret": true,"separator":""},\
        {"storage":"asset:artifact","nbt":"MiniBarsMessage[]","interpret":true,"separator":""},\
        {"storage":"asset:artifact","nbt":"MainBarMessage[]","interpret":true,"separator":""}\
    ]

# リセット
    data remove storage player_manager:absorption AbsorptionMessage
    data remove storage asset:artifact MiniBarsMessage
    data remove storage asset:artifact MainBarMessage
