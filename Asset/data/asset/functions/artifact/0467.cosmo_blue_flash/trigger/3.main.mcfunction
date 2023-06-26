#> asset:artifact/0467.cosmo_blue_flash/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0467.cosmo_blue_flash/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.squid.death player @a ~ ~ ~ 1.0 2.0

    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0467.cosmo_blue_flash/trigger/shot

# ヒット処理
    execute as @e[tag=CZ.HitEntity,distance=..40] run function asset:artifact/0467.cosmo_blue_flash/trigger/hit

# リセット
    tag @e[tag=CZ.HitEntity] remove CZ.HitEntity
    tag @s remove CZ.HitFlag