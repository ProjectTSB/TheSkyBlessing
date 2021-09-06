#> asset:mob/0108.necromancer/tick/3.summon_and_shoot
#
#
#
# @within function asset:mob/0108.necromancer/tick/2.tick

# エクトプラズム召喚を2回に1回実行したい
    scoreboard players add @s 30.WaitSummon 1
    execute if score @s 30.WaitSummon matches 2.. run function asset:mob/0108.necromancer/tick/4.summon_ectoplasm

# 後ろ気味前方拡散ワープ
    execute rotated ~ 0 positioned ^ ^ ^-2 run function asset:mob/0108.necromancer/teleport_process

# 魔術弾発射
    data modify storage api: Argument.ID set value 109
    function api:mob/summon
    tp @e[type=marker,scores={MobID=109},distance=..0.01,sort=nearest,limit=1] ~ ~1.5 ~ facing entity @p[gamemode=!creative,gamemode=!spectator] feet

# 演出
    playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1 0

# スコアリセット
    scoreboard players reset @s 30.Tick