#> asset:sacred_treasure/0826.scp-1689/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0826.scp-1689/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:item.armor.equip_leather hostile @a ~ ~ ~ 1 2.0 1
    particle minecraft:squid_ink ~ ~1 ~ 0.4 0 0.4 0.01 10 force

# じゃがいもを1つ発動者に与える
    give @s potato