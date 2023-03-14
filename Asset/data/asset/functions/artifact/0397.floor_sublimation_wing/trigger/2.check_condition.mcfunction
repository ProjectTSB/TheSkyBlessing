#> asset:artifact/0397.floor_sublimation_wing/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0397.floor_sublimation_wing/trigger/1.trigger
#

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto

# 他にアイテム等確認する場合はここに書く
    # 条件チェックに必要なオブジェクトの初期化
        scoreboard players set $397_Count Temporary 0
        scoreboard players set $397_Stat Temporary 0
    # Y <= 32ブロック に埋まることなくTPできるブロックが存在するか
        execute positioned ~ ~1 ~ run function asset:artifact/0397.floor_sublimation_wing/trigger/2.1.check_block
        execute if score $397_Stat Temporary matches 1 as @e[type=area_effect_cloud,tag=B1.Marker,distance=..32,limit=1] at @s if predicate lib:is_ban_tp_area run scoreboard players set $397_Stat Temporary 0
        execute if score $397_Stat Temporary matches 0 if entity @s[tag=CanUsed] run function lib:message/artifact/can_not_use_here
        execute if score $397_Stat Temporary matches 0 run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0397.floor_sublimation_wing/trigger/3.main

# オブジェクトの開放
    kill @e[type=area_effect_cloud,tag=B1.Marker,distance=..32,limit=1]
    scoreboard players reset $397_Count Temporary
    scoreboard players reset $397_Stat Temporary