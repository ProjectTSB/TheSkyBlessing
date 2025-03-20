#> lib:score_to_health_wrapper/core/show_custom_death_message
#
# カスタム死亡メッセージを配列内から1つ選んで表示
#
# @within function lib:score_to_health_wrapper/core/die

#> ListLength
# @private
    #declare score_holder $Length
    #declare score_holder $Argument.Index

# 乱数取得&範囲設定
    execute store result score $Argument.Index Lib run random value 0..65535
    execute store result score $Length Temporary if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.DeathMessage[]
    scoreboard players operation $Argument.Index Lib %= $Length Temporary
# 配列操作
    function lib:array/session/open
    data modify storage lib: Array set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.DeathMessage
    function lib:array/move
# メッセージ
    tellraw @a {"storage":"lib:","nbt":"Array[-1]","interpret": true}
# リセット
    function lib:array/session/close
    scoreboard players reset $Length Temporary
