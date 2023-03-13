#> asset:artifact/0370.burn_sorcery/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0370.burn_sorcery/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 弾を進めるための再起開始
    execute anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/0370.burn_sorcery/trigger/3.1.shoot

# 演出
    playsound minecraft:entity.blaze.death player @a ~ ~ ~ 1 2
    #playsound minecraft:entity.puffer_fish.death player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 1 0

    execute anchored eyes positioned ^ ^ ^1.5 rotated ~ ~90 run function asset:artifact/0370.burn_sorcery/trigger/particle.1
# タグを消す
    tag @s remove Landing