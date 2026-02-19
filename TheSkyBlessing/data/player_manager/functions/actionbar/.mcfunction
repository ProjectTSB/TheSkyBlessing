#> player_manager:actionbar/
#
#
#
# @within function core:tick/player/post

# EntityStorage 呼び出し
    function oh_my_dat:please

# 出力
    # ( MainBar, Effect )
        title @s[gamemode= spectator] actionbar [{"text":""},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].Message.MainBar[]","interpret":true,"separator":""},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].Message.Effect[]","interpret":true,"separator":""}]
    # ( MiniBar, MainBar, Effect )
        title @s[gamemode=!spectator] actionbar [{"text":""},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].Message.MiniBars[]","interpret":true,"separator":""},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].Message.MainBar[]","interpret":true,"separator":""},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].Message.Effect[]","interpret":true,"separator":""}]

# リセット
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Message
