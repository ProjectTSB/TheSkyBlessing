#> asset:artifact/0103.necronomicon/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0103.necronomicon/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:dragon_breath ~ ~0.8 ~ 2 0.5 2 0.01 100
    particle minecraft:enchant ~ ~1 ~ 0.8 0.3 0.8 0.1 100
    playsound minecraft:entity.elder_guardian.death player @a ~ ~ ~ 1 2

    # 盲目
        effect give @a[distance=..10] minecraft:blindness 3 1

# ダメージ
    # 与えるダメージ = 380
        data modify storage lib: Argument.Damage set value 380f
    # 第一属性 (第二属性なし)
        data modify storage lib: Argument.AttackType set value "Magic"
    # ダメージを与える
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10] run function lib:damage/
# リセット
    function lib:damage/reset