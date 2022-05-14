#> asset:sacred_treasure/0647.thorn_armor/trigger/5.hurt_trigger
#
# 被ダメ時にTagがついているかチェック
#
# @within tag/function asset:sacred_treasure/damage/from_entity/

# フルセットなら実行
    execute if entity @s[tag=HZ.FullSet] run function asset:sacred_treasure/0647.thorn_armor/trigger/7.fullset_hurt