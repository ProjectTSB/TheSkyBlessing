#> asset:artifact/0016.golem_core/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0016.golem_core/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

    # ゴーレム召喚
        summon minecraft:iron_golem ~ ~1 ~ {Health:75f,Attributes:[{Name:"generic.max_health",Base:75d},{Name:"generic.attack_damage",Base:15d}]}
        clear @s iron_block 1

    # 演出
        particle minecraft:enchanted_hit ~ ~ ~ 0.5 1 0.5 0.5 100 force @s
        playsound minecraft:block.anvil.destroy player @s ~ ~ ~ 1 0.9