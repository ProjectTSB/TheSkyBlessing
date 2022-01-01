#> asset:sacred_treasure/0033.magic_shield/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0033.magic_shield/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# 既に発動中の場合発動しない
    execute if entity @s[tag=X.MagicShield] run tellraw @s {"text":"既に効果が発動しています","color":"gold"}
    execute if entity @s[tag=X.MagicShield] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0033.magic_shield/trigger/3.main