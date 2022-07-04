#> asset:sacred_treasure/0089.magic_hoe/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0089.magic_hoe/trigger/1.trigger



# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# 他にアイテム等確認する場合はここに書く
    # ゲームモード確認
        execute if entity @s[gamemode=!survival,gamemode=!creative] run tag @s remove CanUsed
        execute if entity @s[gamemode=!survival,gamemode=!creative] run function lib:message/sacred_treasure/can_not_use_here
    # 周囲のブロック判定
        execute store result score $AroundCrops Temporary run clone ~-4 ~-4 ~-4 ~4 ~4 ~4 ~-4 ~-4 ~-4 filtered #lib:crops force
        execute if score $AroundCrops Temporary matches 0 run tag @s remove CanUsed
        execute if score $AroundCrops Temporary matches 0 run function asset:sacred_treasure/0089.magic_hoe/trigger/error_message
    # リセット
        scoreboard players reset $AroundCrops Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0089.magic_hoe/trigger/3.main