#> asset:sacred_treasure/0329_approaching_hook_shot/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0329_approaching_hook_shot/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity at @s if predicate lib:is_ban_tp_area run tag @a[tag=this] remove CanUsed
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity at @s if predicate lib:is_ban_tp_area run function lib:message/sacred_treasure/can_not_use_here

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0329_approaching_hook_shot/3.main