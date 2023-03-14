#> asset:artifact/0920.dal_i_thalion/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0920.dal_i_thalion/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く

# 効果を与えるためにタグをつける
    tag @s add PK.EffectClear

# 1tick後に動かす
    schedule function asset:artifact/0920.dal_i_thalion/trigger/4.schedule 1t

# 演出
    particle end_rod ~ ~1 ~ 0 1 0 0.2 10
    playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 1.6