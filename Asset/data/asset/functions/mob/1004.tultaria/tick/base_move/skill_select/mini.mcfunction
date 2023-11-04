#> asset:mob/1004.tultaria/tick/base_move/skill_select/mini
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/base_move/
#   asset:mob/1004.tultaria/tick/skill/mini/reset

#> private
# @private
    #declare score_holder $Random

# 通常行動停止タグ付与
    tag @s add RW.InAction

# 小技出しましたタグを消す
    #tag @s remove RW.MiniSkillUsed

# スコアを0に戻す
    scoreboard players set @s RW.Tick -1

# チェイス停止
    kill @e[tag=RW.ChaseMarker]

# 行動をランダムに選択
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # フェイズ1
        execute if entity @s[scores={RW.Phase=1}] run scoreboard players operation $Random Temporary %= $4 Const
    # デバッグ用、実行する技を確定させる
        #scoreboard players set $Random Temporary 3

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add RW.Skill.Mini.MoveShotLeft
    execute if score $Random Temporary matches 1 run tag @s add RW.Skill.Mini.MoveShotRight
    execute if score $Random Temporary matches 0..1 run tag @s add RW.Skill.Mini.MoveShot
    execute if score $Random Temporary matches 2 run tag @s add RW.Skill.Mini.SpreadShot
    execute if score $Random Temporary matches 3 run tag @s add RW.Skill.Mini.Slash

# 斬撃出し過ぎたら他の技にする
    execute if entity @s[scores={RW.MiniSlashCount=3}] run tag @s add RW.Skill.Mini.BackShot

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset @s[scores={RW.MiniSlashCount=3}] RW.MiniSlashCount

#
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral/stop
