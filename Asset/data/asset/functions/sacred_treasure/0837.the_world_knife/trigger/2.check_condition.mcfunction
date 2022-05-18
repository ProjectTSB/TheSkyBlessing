#> asset:sacred_treasure/0837.the_world_knife/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0837.the_world_knife/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
# 20本以上でないように
    # 数のカウント
        execute store result score $Count Temporary run execute if entity @e[type=armor_stand,tag=N9.Knife,distance=..30]
    # もしいたらタグ消し
        #execute if score $Count Temporary matches 20.. run tag @s remove CanUsed
    # リセット
        scoreboard players reset $Count
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0837.the_world_knife/trigger/3.main