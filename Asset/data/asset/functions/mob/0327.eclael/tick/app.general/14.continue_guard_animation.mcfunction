#> asset:mob/0327.eclael/tick/app.general/14.continue_guard_animation
#
# 汎用処理 ガードアニメーションを継続して再生する
#
# @within function asset:mob/0327.eclael/hurt/2.hurt

# 怯みアニメーション受け取り
    execute if entity @s[tag=93.Skill.Latter.Guard.0] run tag @s add 93.Temp.Me

# アニメーション再生停止
    function asset:mob/0327.eclael/tick/app.general/3.stop_all_animations

# 怯みアニメーション再生開始
    execute if entity @s[tag=93.Temp.Me] run tag @s add 93.Skill.Latter.Guard.1
    execute if entity @s[tag=!93.Temp.Me] run tag @s add 93.Skill.Latter.Guard.2
    scoreboard players set @s 93.AnimationTimer 0

# 演出
    playsound item.shield.block hostile @a ~ ~ ~ 1 2
    playsound block.chain.break hostile @a ~ ~ ~ 1 0.7
    playsound block.chain.break hostile @a ~ ~ ~ 1 0.7
    playsound block.chain.break hostile @a ~ ~ ~ 1 1.2
    playsound block.chain.break hostile @a ~ ~ ~ 1 1.2
    playsound item.armor.equip_netherite hostile @a ~ ~ ~ 1 0.7
    playsound item.trident.return hostile @a ~ ~ ~ 1 1.2
    particle electric_spark ^ ^1.3 ^1 0 0 0 1 30
    particle flash ^ ^1.3 ^1 0 0 0 0 1

# 終了
    tag @s remove 93.Temp.Me
    tag @s remove 93.Temp.PrepareGuard
