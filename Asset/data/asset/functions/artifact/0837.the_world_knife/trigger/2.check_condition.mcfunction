#> asset:artifact/0837.the_world_knife/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0837.the_world_knife/trigger/1.trigger

#> Private
# @private
    #declare score_holder $Count

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# 数みる
    # 数のカウント
        execute store result score $Count Temporary if entity @e[type=armor_stand,tag=N9.Knife,distance=..100]
    # もしいたらtagけす
        execute if score $Count Temporary matches 30.. run tag @s remove CanUsed
    # リセット
        scoreboard players reset $Count Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0837.the_world_knife/trigger/3.main
