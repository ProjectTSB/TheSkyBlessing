#> asset:artifact/0002.blessing/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0002.blessing/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# すでに選択待機中ならキャンセル
    execute if score @s 02.Trigger matches 0 run tag @s remove CanUsed
    execute if score @s 02.Trigger matches 0 run tellraw @s [{"text":"前回の能力ボーナスが未選択です","color":"red"}]
    execute if score @s 02.Trigger matches 0 run function asset:artifact/0002.blessing/trigger/show_trigger_chat
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0002.blessing/trigger/3.main
