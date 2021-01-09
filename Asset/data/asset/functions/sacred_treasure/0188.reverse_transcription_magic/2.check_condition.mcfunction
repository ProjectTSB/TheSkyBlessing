#> asset:sacred_treasure/0188.reverse_transcription_magic/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0188.reverse_transcription_magic/1.trigger
#declare score_holder $MPRequire

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    execute store result score $MPRequire Temporary run data get entity @s Inventory[{Slot:-106b}].tag.TSB.MPRequire
    execute unless score $MPRequire Temporary matches 1.. run tag @s remove CanUsed
    execute unless score $MPRequire Temporary matches 1.. run playsound ui.button.click master @s ~ ~ ~ 1 2
    execute unless score $MPRequire Temporary matches 1.. run tellraw @s [{"text": "オフハンドにMPを消費する神器を持っている必要があります","color": "red"}]
    scoreboard players reset $MPRequire Temporary
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0188.reverse_transcription_magic/3.main