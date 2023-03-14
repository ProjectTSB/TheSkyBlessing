#> asset:artifact/0647.thorn_armor/trigger/6.hurt_trigger
#
# 被ダメ時にTagがついているかチェック
#
# @within tag/function asset:artifact/damage/from_entity/

# フルセットなら実行
    execute if entity @s[tag=HZ.FullSet] unless entity @s[scores={HZ.CoolDown=0..}] run function asset:artifact/0647.thorn_armor/trigger/7.hurt