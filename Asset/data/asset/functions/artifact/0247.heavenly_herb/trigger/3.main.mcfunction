#> asset:artifact/0247.heavenly_herb/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0247.heavenly_herb/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 昇天判定
    execute if predicate lib:random_pass_per/5 run kill @s

# 回復効果
    # 回復する量 = 8
        data modify storage lib: Argument.Heal set value 18f
# 実行者対象
    function lib:heal/modifier
    function lib:heal/
# リセット
    function lib:heal/reset

# 演出
    particle minecraft:happy_villager ~ ~ ~ 1 1 1 1 100 normal @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 0.1