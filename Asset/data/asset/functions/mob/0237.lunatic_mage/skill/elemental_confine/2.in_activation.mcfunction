#> asset:mob/0237.lunatic_mage/skill/elemental_confine/2.in_activation
#
# 技の発動中の諸々の処理
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/1

#> 安全地帯チェックのTag
# @private
    #declare tag 6L.InSafeArea

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s 6L.Tick
# 6tickごとに水の檻を表示
    scoreboard players operation $Interval Temporary %= $6 Const
    execute positioned ~ ~-2 ~ if score $Interval Temporary matches 0 rotated 0 0 run function asset:mob/0237.lunatic_mage/skill/elemental_confine/3.water_jail

# もしもなんらかの理由で移動してMarkerから離れた場合戻る positioned asが入っているのは移動した際の向き保存のため
    execute positioned ~ ~-2 ~ unless entity @e[type=marker,tag=6L.SpawnPoint,distance=..0.01,sort=nearest,limit=1] positioned as @e[type=marker,tag=6L.SpawnPoint,distance=..50,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# エンパをkill
    execute if entity @e[type=ender_pearl,tag=!Projectile,distance=5.5..9] run kill @e[type=ender_pearl,tag=!Projectile,distance=5.5..9]

# 水の檻の範囲内のプレイヤーを中心へと吸い込む
    execute as @a[distance=5.5..9] at @s facing entity @e[type=marker,tag=6L.SpawnPoint,distance=..9,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^0.5

# 技の範囲外にいる最大5人を対象とし、ペナルティとして雷撃をくらわせる
    scoreboard players operation $Interval Temporary = @s 6L.Tick
    scoreboard players operation $Interval Temporary %= $10 Const
    execute positioned ~-9 ~-2 ~-9 run tag @a[dx=17,dy=0,dz=17] add 6L.InSafeArea
    execute if score $Interval Temporary matches 0 at @a[gamemode=!spectator,tag=!6L.InSafeArea,distance=..50,sort=random,limit=5] positioned ~ ~0.2 ~ run function asset:mob/0237.lunatic_mage/magic_summon/thunder

# リセット
    scoreboard players reset $Interval Temporary
    tag @a[tag=6L.InSafeArea,distance=..50] remove 6L.InSafeArea