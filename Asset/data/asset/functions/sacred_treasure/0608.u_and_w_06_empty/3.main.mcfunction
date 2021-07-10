#> asset:sacred_treasure/0608.u_and_w_06_empty/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0608.u_and_w_06_empty/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く
    stopsound @a * entity.item.break
    playsound block.iron_trapdoor.close ambient @a ~ ~ ~ 1 0.5
    playsound entity.horse.armor master @p ~ ~ ~ 0.6 0.6
    function asset:sacred_treasure/0607.u_and_w_06/_.give