#> asset:artifact/0953.meteor_rain/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0953.meteor_rain/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# サウンド
    playsound minecraft:entity.blaze.ambient player @a ~ ~ ~ 3 1.2
    playsound minecraft:entity.blaze.ambient player @a ~ ~ ~ 3 0.8
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 3 1.5
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 3 1.2
    playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 3 0.5

# スコアリセット
    scoreboard players set @s QH.MeteorCastedCount 0

# 一定時間メテオを降らす
    schedule function asset:artifact/0953.meteor_rain/trigger/4.emitter_tick 1t replace