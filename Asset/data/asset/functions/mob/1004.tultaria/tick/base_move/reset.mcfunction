#> asset:mob/1004.tultaria/tick/base_move/reset
#
#
#
# @within function asset:mob/1004.tultaria/tick/**

#> トゥル側から剣へと付与するタグ
# @private
#declare tag S8.Death


# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/return_to_neutral/play

# スキルのタグをリセットする
    function asset:mob/1004.tultaria/tick/reset/skill_tag

# 行動中タグを解除
    tag @s remove RW.InAction

# 慣性ONに
    tag @s remove RW.DisableInertia

# チェイス停止
    kill @e[tag=RW.ChaseMarker]
    tag @s remove RW.ChaseShot

# 無敵解除
    data modify entity @s Invulnerable set value 0b
    tag @s remove Uninterferable

# スコアを戻す
    scoreboard players set @s RW.Tick -26
    scoreboard players set @s RW.LoopCount 0
    scoreboard players reset @s RW.FakeInertia
    scoreboard players reset @s RW.MiniSkillCount

# 速度設定
    scoreboard players set @s[scores={RW.Phase=1}] RW.Speed 4
    scoreboard players set @s[scores={RW.Phase=1}] RW.Speed 6
    scoreboard players set @s[scores={RW.Phase=1}] RW.Speed 7

# ソード設置カウントをリセット
    scoreboard players set @s[scores={RW.Phase=2,RW.SwordCount=2..}] RW.SwordCount 0
    scoreboard players set @s[scores={RW.Phase=3,RW.SwordCount=1..}] RW.SwordCount 0

# 剣を消す
    tag @e[type=armor_stand,scores={MobID=1016}] add S8.Death

# 速度設定
    scoreboard players set @s RW.Speed 5

# ランダム移動
    execute at @r run function asset:mob/1004.tultaria/tick/move/teleport/place_marker