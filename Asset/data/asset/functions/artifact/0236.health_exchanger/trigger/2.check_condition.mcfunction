#> asset:artifact/0236.health_exchanger/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0236.health_exchanger/trigger/1.trigger

#> private
# @private
    #declare score_holder $SCUserHealth
    #declare score_holder $MaxHealth
    #declare tag HasMaxHealth

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

    # //まず全員の体力をscoreに代入
    execute as @a run function asset:artifact/0236.health_exchanger/trigger/own_data_put
    # //自分の体力も比較用に代入
    function api:data_get/health
    execute store result score $SCUserHealth Temporary run data get storage api: Health 100
    # //鯖民の最大体力を求める
    execute as @a run scoreboard players operation $MaxHealth Temporary > @s Temporary
    execute as @a if score @s Temporary = $MaxHealth Temporary run tag @s add HasMaxHealth
    # //Maxが自分と同じだったらTag削除
    execute if entity @s[tag=HasMaxHealth] run tag @s remove CanUsed
    execute if entity @s[tag=HasMaxHealth] run tellraw @s [{"text": "-☆既に体力が鯖で一番多いです☆-"}]
    # //そもそも他人がいるか
    execute unless entity @a[tag=!this] run tag @s remove CanUsed
    execute unless entity @a[tag=!this] run tellraw @s [{"text": "なんなら今はボッチです☆","color": "gray"}]

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0236.health_exchanger/trigger/3.main

# リセット //3.mainでも使用するため最後に
    scoreboard players reset @a Temporary
    scoreboard players reset $SCUserHealth Temporary
    scoreboard players reset $MaxHealth Temporary
    tag @a[tag=HasMaxHealth] remove HasMaxHealth