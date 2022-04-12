#> asset:mob/0053.executioners/attack/2.attack
#
# Mobの攻撃時の処理（雷弄者と似た感じ）
#
# @within function asset:mob/0053.executioners/attack/1.trigger
#> tag
# @within function asset:mob/0053.executioners/attack/2.attack
    #declare tag SpreadMarker

# 演出

# 演出
    execute at @p[tag=Victim] run particle minecraft:lava ~ ~0.5 ~ 0 0.5 0 0.1 40
    execute at @p[tag=Victim] run particle witch ~ ~ ~ 0 1 0 0 20
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 0.6
    playsound entity.phantom.bite hostile @a ~ ~ ~ 1 0

# 何故かこうするとプレイヤーと同じ剣の降り方をする
    item replace entity @s weapon with stick{CustomModelData:20029}

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 10f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim] run function lib:damage/
# リセット
    data remove storage lib: Argument


# 以下自分がテレポートする処理
# 演出
   particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
   playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1

# ワープ準備
    execute at @p[gamemode=!spectator] run summon marker ~ ~40 ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 4
    data modify storage lib: Argument.Spread set value 2d
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @p positioned ~ ~40 ~ rotated ~ 90 run function lib:forward_spreader/circle

# ワープ
    execute at @p[gamemode=!spectator] positioned ~ ~40 ~ facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet positioned ^ ^ ^40 if block ~ ~ ~ #lib:no_collision_without_fluid run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]
# もし壁に埋まってたらちょっと前に出る(あくまで念の為の処理だし別に壁に埋まってようが問題はない)
    execute unless block ~ ~1 ~ #lib:no_collision run tp @s ^ ^ ^1

# 突進する
    data modify storage lib: Argument.VectorMagnitude set value 2
    execute at @s facing entity @p[gamemode=!spectator] feet rotated ~ ~-10 run function lib:motion/

# リセット
    data remove storage lib: Argument
    kill @e[type=marker,tag=SpreadMarker]
