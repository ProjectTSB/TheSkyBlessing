#> asset:artifact/0158.mp_extractor/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0158.mp_extractor/trigger/1.trigger

#> Private
# @private
    #declare score_holder $BottleCount

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    # ガラス瓶持ってるかチェック
        execute store result score $BottleCount Temporary run clear @s glass_bottle 0
        execute if score $BottleCount Temporary matches 0 run tag @s remove CanUsed
    # ガラス瓶ないよコメント
        execute if score $BottleCount Temporary matches 0 run function lib:message/artifact/dont_have_require_items
        scoreboard players reset $BottleCount Temporary
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0158.mp_extractor/trigger/3.main