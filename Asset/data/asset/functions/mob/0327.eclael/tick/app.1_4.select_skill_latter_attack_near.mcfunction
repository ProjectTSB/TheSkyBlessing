#> asset:mob/0327.eclael/tick/app.1_4.select_skill_latter_attack_near
#
# 使用するスキルを決定する・後半戦・通常攻撃・近距離用
#
# @within function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
# プレイヤーが単体の場合は電光石火は選択しない
    execute unless score $PlayerCount Global matches 2.. run scoreboard players operation $Random Temporary %= $4 Const
    execute if score $PlayerCount Global matches 2.. run scoreboard players operation $Random Temporary %= $5 Const

# 袈裟斬り
    execute if score $Random Temporary matches 0 run tag @s add 93.Skill.Latter.MoveSlash
# 居合斬り
    execute if score $Random Temporary matches 1 run tag @s add 93.Skill.Latter.Iai
# 射撃
    execute if score $Random Temporary matches 2 run tag @s add 93.Skill.Latter.Shot
# 突き
    execute if score $Random Temporary matches 3 run function asset:mob/0327.eclael/tick/app.1_9.select_skill_latter_spear
# 電光石火
    # 中心点からある程度遠い場合，50%の確率で電光石火・帰還を使用
        execute if score $Random Temporary matches 4 if predicate lib:random_pass_per/50 unless entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..15] run tag @s add 93.Skill.Latter.Move.Back
    execute unless entity @s[tag=93.Skill.Latter.Move.Back] if score $Random Temporary matches 4 run tag @s add 93.Skill.Latter.Move

# リセット
    scoreboard players reset $Random Temporary