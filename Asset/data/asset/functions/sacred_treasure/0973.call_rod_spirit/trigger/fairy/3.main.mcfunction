#> asset:sacred_treasure/0973.call_rod_spirit/trigger/fairy/3.main
#
# ゴーストちゃんの動作部分
#
# @within asset:sacred_treasure/0973.call_rod_spirit/trigger/fairy/2.tick

#> ゴーストちゃんの移動先を決定するマーカーのタグ、持ち主のプレイヤーのタグ
# @private
#declare tag R1.MoveMarker
#declare tag R1.MoveMarkerInit
#declare tag R1.OwnerMarker
#declare tag R1.OwnerPlayer

# 同IDのプレイヤーを特定
    execute at @a[distance=..30] if score @s R1.UserID = @p UserID run tag @p add R1.OwnerPlayer

# マスターにMarkerを召喚する
    execute at @p[tag=R1.OwnerPlayer] rotated ~ 0 run summon marker ^-1 ^1 ^-1 {Tags:[R1.MoveMarker,R1.MoveMarkerInit]}

# MarkerにID付与
    scoreboard players operation @e[type=marker,tag=R1.MoveMarkerInit,sort=nearest,limit=1] R1.UserID = @s R1.UserID
    tag @e[type=marker,tag=R1.MoveMarkerInit,sort=nearest,limit=1] remove R1.MoveMarkerInit

# 同IDのマーカーを特定
    execute at @e[type=marker,tag=R1.MoveMarker,distance=..100] if score @s R1.UserID = @e[type=marker,tag=R1.MoveMarker,distance=..0.01,sort=nearest,limit=1] R1.UserID run tag @e[type=marker,tag=R1.MoveMarker,distance=..0.01,sort=nearest,limit=1] add R1.OwnerMarker

# マスターのマーカーに誘導移動
    execute facing entity @e[type=marker,tag=R1.OwnerMarker,distance=1..30,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-400 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.23 ~ ~

# マーカーが近づいたらゆっくりと向かう
    execute facing entity @e[type=marker,tag=R1.OwnerMarker,distance=0.5..1,limit=1] eyes run tp @s ^ ^ ^0.1

# 付近に敵がいたらそっちへの攻撃を優先
    execute facing entity @e[tag=Enemy,distance=..15,sort=nearest,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.05 ~ ~

# ポーズ
    # (待機)
        execute unless entity @e[tag=Enemy,distance=..15,sort=nearest,limit=1] run item replace entity @s armor.head with stick{CustomModelData:20236}

    # (射撃)
        execute if entity @e[tag=Enemy,distance=..15,sort=nearest,limit=1] run item replace entity @s armor.head with stick{CustomModelData:20229}

# パーティクル
    execute rotated ~ 0 run particle minecraft:dust 1 1 1 0.5 ^ ^ ^-0.2 0.07 0.07 0.07 0 1 force @a[distance=..30]
    execute rotated ~ 0 run particle minecraft:dust 0.592 0.722 0.918 1 ^ ^ ^-0.2 0.1 0.1 0.1 0 1
    execute if predicate lib:random_pass_per/30 rotated ~ 0 run particle minecraft:soul_fire_flame ^ ^ ^-0.2 0.1 0.1 0.1 0 1

# 付近に敵がいるならスコア加算
    execute if entity @e[tag=Enemy,distance=..15] run scoreboard players add @s R1.Tick 1

# 魔法攻撃
    execute if entity @s[scores={R1.Tick=2..}] rotated ~ 0 positioned ^0.1 ^0.8 ^0.5 run function asset:sacred_treasure/0973.call_rod_spirit/trigger/fairy/4.shoot

# 撃ちまくったら休憩
    execute if entity @s[scores={R1.ShotCount=3..}] run scoreboard players set @s R1.Tick -10
    execute if entity @s[scores={R1.ShotCount=3..}] run scoreboard players reset @s R1.ShotCount

# 付近に敵がいないならスコアリセット
    execute unless entity @e[tag=Enemy,distance=..15] run scoreboard players reset @s R1.Tick
    execute unless entity @e[tag=Enemy,distance=..15] run scoreboard players reset @s R1.ShotCount

# ヘルス
    scoreboard players remove @s R1.LifeTime 1
    execute if score @s R1.LifeTime matches 0 run function asset:sacred_treasure/0973.call_rod_spirit/trigger/fairy/5.disapper

# リセット
    kill @e[type=marker,tag=R1.MoveMarker]
    tag @a[tag=R1.OwnerPlayer] remove R1.OwnerPlayer