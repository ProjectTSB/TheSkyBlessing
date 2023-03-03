#> asset:artifact/0078.self_destruct_order/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0078.self_destruct_order/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# アイアンゴーレムとスノーゴーレムが近くにいるときのみ発動
    scoreboard players set @s Temporary 0
    execute if entity @e[type=iron_golem,distance=..15] run scoreboard players set @s Temporary 1
    execute if entity @e[type=snow_golem,distance=..15] run scoreboard players set @s Temporary 1
    execute if entity @s[scores={Temporary=0}] run tag @s remove CanUsed
    scoreboard players reset @s Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0078.self_destruct_order/trigger/3.main