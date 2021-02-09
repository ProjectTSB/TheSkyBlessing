#> asset:sacred_treasure/0164.blessing_boots/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0164.blessing_boots/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/check_condition/feet
# 他にアイテム等確認する場合はここに書く

# Y座標が0未満のみ処理
    execute store result score @s Temporary run data get entity @s Pos[1] 1
    execute if score @s Temporary matches 0.. run tag @s remove CanUsed
    scoreboard players reset @s Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0164.blessing_boots/3.main