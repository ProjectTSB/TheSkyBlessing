#> asset:artifact/0210.terra_blade/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0210.terra_blade/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# VFX
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.75
    playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1.5 1.25

# 剣を召喚
    function asset:artifact/0210.terra_blade/trigger/sword/summon_sword