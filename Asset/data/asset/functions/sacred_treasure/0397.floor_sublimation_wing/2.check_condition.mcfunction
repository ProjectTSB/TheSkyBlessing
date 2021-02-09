#> asset:sacred_treasure/0397.floor_sublimation_wing/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0397.floor_sublimation_wing/1.trigger
#

#> Temp
# 条件チェックに必要なスコアホルダー、タグ
#
# $397_Count: 2.1.check_blockの再起用
# $397_Stat: 現在の条件チェック結果(0: 条件を満たさない, 1: 条件を満たす)
#
# 397.Marker: TPに使用
#
# @within
#   function asset:sacred_treasure/0397.floor_sublimation_wing/2.*
#   function asset:sacred_treasure/0397.floor_sublimation_wing/3.main
#
    #declare score_holder $397_Count
    #declare score_holder $397_Stat
    #declare tag 397.Marker

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/check_condition/mainhand

# 他にアイテム等確認する場合はここに書く
    # 条件チェックに必要なオブジェクトの初期化
        scoreboard players set $397_Count Temporary -1
        scoreboard players set $397_Stat Temporary 0
    # Y <= 32ブロック に埋まることなくTPできるブロックが存在するか
        function asset:sacred_treasure/0397.floor_sublimation_wing/2.1.check_block
        execute if score $397_Stat Temporary matches 0 if entity @s[tag=CanUsed] run tellraw @s {"text": "ここでは使えません", "color": "red"}
        execute if score $397_Stat Temporary matches 0 run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0397.floor_sublimation_wing/3.main

# オブジェクトの開放
    kill @e[tag=397.Marker,limit=1]
    scoreboard players reset $397_Count Temporary