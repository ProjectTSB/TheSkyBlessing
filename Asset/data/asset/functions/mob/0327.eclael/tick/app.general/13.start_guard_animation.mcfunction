#> asset:mob/0327.eclael/tick/app.general/13.start_guard_animation
#
# 汎用処理 ガードアニメーションを再生開始する
#
# @within function asset:mob/0327.eclael/hurt/2.hurt

# アニメーション再生停止
    function asset:mob/0327.eclael/tick/app.general/3.stop_all_animations

# ガードアニメーション再生開始
    tag @s add 93.Skill.Latter.Guard.0
    scoreboard players set @s 93.AnimationTimer 0

# 怯み時間調整用の開始処理
    tag @s remove 93.Temp.PrepareGuard
    tag @s add 93.Temp.Guard

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
