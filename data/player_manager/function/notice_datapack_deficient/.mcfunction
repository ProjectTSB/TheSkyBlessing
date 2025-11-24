#> player_manager:notice_datapack_deficient/
#
#
#
# @within function core:handler/join

# データパックが少ない状態でなければ return
    execute unless data storage global {IsDatapackDeficient:true} run return 0
# ミュートしてるなら return
    execute if data storage global {MuteDatapackDeficientNotice:true} run return 0

# 警告
    tellraw @s [{"text":"[warning] ","color":"yellow"},{"text":"配布データに比べてデータパックが少ない状態を検出しました。\nワールドデータに欠損が発生している可能性が高いため","color":"white"},{"text":"再導入を推奨","color":"red"},{"text":"します。\nもし、何らかの改変を加えていて、通知が発生するのが意図した通りの場合は以下のボタンを押して下さい。","color":"white"}]

# ボタン
    data modify storage api: Argument.Label set value "この通知を無効化する"
    data modify storage api: Argument.Key set value "mute_datapack_deficient_notice"
    data modify storage api: Argument.Listener set value "player_manager:notice_datapack_deficient/on_mute_datapack_deficient_notice_button"
    function api:button/send
