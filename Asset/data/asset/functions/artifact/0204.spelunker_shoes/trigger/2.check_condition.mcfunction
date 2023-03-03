#> asset:artifact/0204.spelunker_shoes/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0204.spelunker_shoes/trigger/1.trigger

#>
# @private
    #declare score_holder $FallDistance

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/feet
# 他にアイテム等確認する場合はここに書く

# 落下距離が2マス未満の場合は処理しない
    function api:data_get/fall_distance
    execute store result score $FallDistance Temporary run data get storage api: FallDistance
    execute if score $FallDistance Temporary matches ..1 run tag @s remove CanUsed
    scoreboard players reset $FallDistance

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0204.spelunker_shoes/trigger/3.main