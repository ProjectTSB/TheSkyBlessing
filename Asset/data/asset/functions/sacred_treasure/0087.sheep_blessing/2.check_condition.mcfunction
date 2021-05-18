#> asset:sacred_treasure/0087.sheep_blessing/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0087.sheep_blessing/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# プレイヤーのゲームモードがサバイバル・クリエイティブの時にのみ使用可能
    execute if entity @s[gamemode=!survival,gamemode=!creative] run tag @s remove CanUsed
    execute if entity @s[gamemode=!survival,gamemode=!creative] run function lib:message/sacred_treasure/can_not_use_here

# 羊毛を持ってるかチェック
    execute store result score @s Temporary run clear @s #wool 0
    execute if score @s Temporary matches 0 run tag @s remove CanUsed
    execute if score @s Temporary matches 0 run function lib:message/sacred_treasure/dont_have_require_items

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0087.sheep_blessing/3.main