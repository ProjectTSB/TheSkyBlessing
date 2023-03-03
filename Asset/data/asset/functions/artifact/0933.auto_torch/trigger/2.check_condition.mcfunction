#> asset:artifact/0933.auto_torch/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0933.auto_torch/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 933
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く
# いろいろチェックする
    execute if entity @s[tag=CanUsed] run function asset:artifact/0933.auto_torch/trigger/can_set_check
    execute if entity @s[tag=CanUsed,tag=ExtraCheckFailed] run tag @s remove CanUsed
    execute if entity @s[tag=ExtraCheckFailed] run tag @s remove ExtraCheckFailed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0933.auto_torch/trigger/3.main