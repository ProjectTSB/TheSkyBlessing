#> asset:artifact/0608.u_and_w_06_empty/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0608.u_and_w_06_empty/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
    stopsound @a * entity.item.break
    playsound block.iron_trapdoor.close player @a ~ ~ ~ 1 0.5
    playsound entity.horse.armor player @p ~ ~ ~ 0.6 0.6
    data modify storage api: Argument.ID set value 607
    function api:artifact/give/from_id