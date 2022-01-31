#> asset:sacred_treasure/0342.super_dragon_bell/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0342.super_dragon_bell/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く
    # 演出
        playsound entity.horse.gallop master @a ~ ~ ~ 1.0 0.5
        playsound block.bell.use master @a ~ ~ ~ 1.0 1.5
        particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 30
    # スーパードラゴン召喚
        summon horse ~ ~0.1 ~ {Health:0.1f,CustomName:'[{"text":"スーパードラゴン","color":"aqua"}]',CustomNameVisible:1b,Tame:1b,Variant:0,SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{TSB:{ItemMetaData:["BanEntityConditionItem","BanPossession"]}}},DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:8b,Amplifier:18b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:0.1d},{Name:"horse.jump_strength",Base:2.0d},{Name:"generic.movement_speed",Base:0.6d}],Tags:["Friend"]}