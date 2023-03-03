#> asset:artifact/0022.amen_ra_rod/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0022.amen_ra_rod/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 発光を付与
    effect give @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..30] minecraft:glowing 60 0 true

# パーティクル
    execute at @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..30] run particle end_rod ~ ~ ~ 1 1 1 0.1 100 force @a[distance=..30]

# SE
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 20 1