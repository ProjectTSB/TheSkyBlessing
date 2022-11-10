#> asset:mob/0022.red_knight/tick/skills/hyper_explosion/4.alert
#
# 攻撃範囲警告。パーティクル処理もここ。
#
# @within function asset:mob/0022.red_knight/tick/skills/hyper_explosion/3.search_ground

#> インターバル
# @private
#declare score_holder $SoundInterval
#declare score_holder $ParticleInterval

# 実行時間を移す
    scoreboard players operation $SoundInterval Temporary = @s M.Tick
    scoreboard players operation $ParticleInterval Temporary = @s M.Tick

# 数Tickおきにパーティクルを出す
    scoreboard players operation $ParticleInterval Temporary %= $6 Const
    execute if score $ParticleInterval Temporary matches 0 positioned ~ ~0.5 ~ run function asset:mob/0022.red_knight/tick/skills/hyper_explosion/alert_particle
    execute if score $ParticleInterval Temporary matches 0 positioned ~ ~2.5 ~ run function asset:mob/0022.red_knight/tick/skills/hyper_explosion/alert_particle



# 数Tickおきに、範囲内のやつに対して警告音を鳴らす。発動が近づくとテンポあがる
    execute if score @s M.Tick matches 20..39 run scoreboard players operation $SoundInterval Temporary %= $4 Const
    execute if score @s M.Tick matches 40..79 run scoreboard players operation $SoundInterval Temporary %= $3 Const
    execute if score @s M.Tick matches 80..100 run scoreboard players operation $SoundInterval Temporary %= $2 Const
    execute if score $SoundInterval Temporary matches 0 at @a[distance=..16] run playsound minecraft:block.note_block.pling neutral @p ~ ~ ~ 0.8 2
