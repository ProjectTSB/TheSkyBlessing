#> asset:artifact/0087.sheep_blessing/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0087.sheep_blessing/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# プレイヤーのゲームモードがサバイバル・クリエイティブの時にのみ使用可能
    execute if entity @s[gamemode=!survival,gamemode=!creative] run tag @s remove CanUsed
    execute if entity @s[gamemode=!survival,gamemode=!creative] run function lib:message/artifact/can_not_use_here

# 16個以上羊毛を持ってるかチェック
    execute store result score @s Temporary run clear @s #wool 0
    execute if score @s Temporary matches ..15 run tag @s remove CanUsed
    execute if score @s Temporary matches ..15 run function lib:message/artifact/dont_have_require_items

# リセット
    scoreboard players reset @s Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0087.sheep_blessing/trigger/3.main