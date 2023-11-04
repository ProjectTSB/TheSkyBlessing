#> asset:mob/1004.tultaria/tick/base_move/skill_select/main
#
#
#
# @within function asset:mob/1004.tultaria/tick/**
#> private
# @private
    #declare score_holder $Random

# ミニスラッシュのカウントをリセット
    scoreboard players reset @s RW.MiniSlashCount

# 通常行動停止タグ付与
    tag @s add RW.InAction

# 小技出しましたタグを消す
    tag @s remove RW.MiniSkillUsed

# スコアを0に戻す
    scoreboard players set @s RW.Tick -1
    scoreboard players set @s RW.LoopCount 0

# チェイス停止
    kill @e[tag=RW.ChaseMarker]

# 行動をランダムに選択
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # フェイズ1
        execute if entity @s[scores={RW.Phase=1}] run scoreboard players operation $Random Temporary %= $6 Const
    # フェイズ2(拡散ショットを解禁)
        execute if entity @s[scores={RW.Phase=2}] run scoreboard players operation $Random Temporary %= $7 Const
    # フェイズ3(スターフューリーを解禁)
        execute if entity @s[scores={RW.Phase=3}] run scoreboard players operation $Random Temporary %= $8 Const

# デバッグ用、実行する技を確定させる
    scoreboard players set $Random Temporary 2

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add RW.Skill.Meteor
    execute if score $Random Temporary matches 1 run tag @s add RW.Skill.Thunder
    execute if score $Random Temporary matches 2 run tag @s add RW.Skill.AncientLight
    execute if score $Random Temporary matches 3 run tag @s add RW.Skill.FreezingShred
    execute if score $Random Temporary matches 4 run tag @s add RW.Skill.BlazingSlash
    execute if score $Random Temporary matches 5 run tag @s add RW.Skill.LightningStab
    execute if score $Random Temporary matches 6 run tag @s add RW.Skill.SpreadShot
    execute if score $Random Temporary matches 7 run tag @s add RW.Skill.Starfury

# リセット
    scoreboard players reset $Random Temporary

#
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral/stop
