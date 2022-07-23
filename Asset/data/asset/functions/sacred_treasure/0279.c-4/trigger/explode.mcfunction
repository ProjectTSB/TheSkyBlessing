#> asset:sacred_treasure/0279.c-4/trigger/explode
#
#
#
# @within function
#       asset:sacred_treasure/0279.c-4/trigger/detonate
#       asset:sacred_treasure/0279.c-4/trigger/explode

# 自殺する
    kill @s

# おまけでダメージを与える
    # 与えるダメージ = 80
        data modify storage lib: Argument.Damage set value 80f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=!7R.C4,distance=..5] run function lib:damage/
        function lib:damage/reset

# クリーパー召喚
    summon creeper ~ ~ ~ {DeathTime:19s,Invulnerable:1b,DeathLootTable:"minecraft:empty",ExplosionRadius:3b,Fuse:0s,Tags:["Uninterferable"]}