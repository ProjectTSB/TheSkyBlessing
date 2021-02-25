#> asset:sacred_treasure/0236.health_exchanger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0236.health_exchanger/1.trigger

#> private
# @private
    #declare score_holder $OwnHealth
    #declare score_holder $MaxHealth

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/check_condition/auto
# 他にアイテム等確認する場合はここに書く

    # //まず全員の体力をscoreに代入
    execute as @a store result score @s Temporary run data get entity @s Health 100
    # //自分の体力も比較用に代入
    execute store result score $OwnHealth Temporary run data get entity @s Health 100
    # //鯖民の最大体力を求める
    execute as @a run scoreboard players operation $MaxHealth Temporary < @s Temporary
    # //Maxが自分と同じだったらTag削除
    execute unless score $MaxHealth Temporary = @s Temporary run tag @s remove CanUsed
    execute unless score $MaxHealth Temporary = @s Temporary run tellraw @s [{"text": "-☆既に体力が鯖で一番多いです☆ﾐ-"}]

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0236.health_exchanger/3.main

# リセット //3.mainでも使用するため最後に
    scoreboard players reset @a Temporary
    scoreboard players reset $OwnHealth Temporary
    scoreboard players reset $MaxHealth Temporary