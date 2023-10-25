#> asset:mob/0327.eclael/tick/app.1_11_1.select_skill_latter_hard_former_move
#
# 使用するスキルを決定する・後半戦の前半
#
# @within function asset:mob/0327.eclael/tick/**

# プレイヤーとの距離を測り，誰も近くにいない場合は電光石火を選択
    execute unless entity @a[tag=!PlayerShouldInvulnerable,distance=..8] run tag @s add 93.Skill.Latter.Move 
# プレイヤーが近くにいる場合，行動順をスキップ
    execute if entity @s[tag=!93.Skill.Latter.Move] run scoreboard players add @s 93.ActionCount 1
