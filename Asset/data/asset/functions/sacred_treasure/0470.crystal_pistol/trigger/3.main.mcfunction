#> asset:sacred_treasure/0470.crystal_pistol/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0470.crystal_pistol/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:block.amethyst_block.step player @a
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.8 2

# 召喚
    data modify storage api: Argument.ID set value 304
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~9999.5 ~ run function api:mob/summon
