#> asset:sacred_treasure/0397.floor_sublimation_wing/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0397.floor_sublimation_wing/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
    # 演出(テレポート元)
        playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1.3
        playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 1 0.2
        particle minecraft:reverse_portal ~ ~ ~ 0.1 0.1 0.1 1 150
        particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 5 30

    # テレポート
        execute at @e[tag=397.Marker,dx=0.1,dy=33,dz=0.1,limit=1] rotated as @s run tp @s ~ ~ ~

    # 演出(テレポート後)
        execute at @s run particle minecraft:reverse_portal ~ ~ ~ 0.1 0.1 0.1 1 150
        particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 5 30