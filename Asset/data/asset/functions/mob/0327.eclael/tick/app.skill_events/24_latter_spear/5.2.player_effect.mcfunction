#> asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/5.2.player_effect
#
# アニメーションのイベントハンドラ 後半・突き スケジュールプレイヤー用処理
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/**

# OnGround取得
    function api:data_get/on_ground

# 着地時の処理
    # 上手く刀に乗れた場合，エクレールに突き怯みモーションを再生させる
        execute if data storage api: {OnGround:1b} as @e[type=wither_skeleton,tag=93.Skill.Latter.Spear,distance=..4,sort=nearest,limit=1] at @s positioned ^ ^ ^1.5 if entity @a[tag=93.Temp.ScheduleTargetPlayer,distance=..1.8] run function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/6.start_damage_animation
    # 一時タグ消去
        execute if data storage api: {OnGround:1b} run tag @s remove 93.Temp.ScheduleTargetPlayer
