#> asset:sacred_treasure/0212.anti_materiel_rifle/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0212.anti_materiel_rifle/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 弾を進めるための再起開始
    execute positioned ~ ~1.5 ~ run function asset:sacred_treasure/0212.anti_materiel_rifle/trigger/3.1.bullet

# 演出
    tp @s ~ ~ ~ ~ ~-5
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 2
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.75
    playsound minecraft:entity.wither.hurt neutral @a ~ ~ ~ 1 1.5