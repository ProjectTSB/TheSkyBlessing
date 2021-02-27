#> asset:sacred_treasure/0329_approaching_hook_shot/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0329_approaching_hook_shot/1.trigger
# @private
    #declare score_holder $isBanTPArea

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く
    execute if entity @s[tag=CanUsed] as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity at @s store result score $isBanTPArea Temporary if predicate lib:is_ban_tp_area
    execute if score $isBanTPArea Temporary matches 1 run tag @s remove CanUsed
    execute if score $isBanTPArea Temporary matches 1 run function lib:message/sacred_treasure/can_not_use_here
    scoreboard players reset $isBanTPArea Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0329_approaching_hook_shot/3.main