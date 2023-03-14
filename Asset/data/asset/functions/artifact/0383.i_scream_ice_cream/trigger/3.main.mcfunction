#> asset:artifact/0383.i_scream_ice_cream/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0383.i_scream_ice_cream/trigger/2.check_condition
#> Private
# @private
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# ランダムで変なこと言うやつ
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation $Random Temporary %= $20 Const
    # メッセージ出力
        execute if score $Random Temporary matches 0 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" アイスで冷やす？ああ、いいっすね！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 1 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" アイススケートする？ああ、いいっすけど！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 2 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" アイスランド人が愛すランドセル！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 3 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" イカリングでカーリング！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 4 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 氷河がないんじゃ、ひょうが無い！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 5 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" サムは寒いと感じた！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 6 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 氷点下なのに、ヒョー、雨天か！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 7 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 防寒姿で傍観！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 8 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 効率良く氷強くする！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 9 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 冷凍庫に入れと〜こ","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 10 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" コーラスフルーツをよう凍らす！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 11 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 寒波に完敗！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 12 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 雪が降ってて寒いでスノー！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 13 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" ナイスなアイス、なぁ、いいっすよね！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 14 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 寒気は回る、感極まる！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 15 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 愛する人とアイス食う！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 16 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" もう冬かい？なんて不愉快！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 17 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 冷めているサメ！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 18 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 紅茶が凍っちゃった！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 19 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" サム言い寄る、寒い夜！","color":"aqua","bold":true}]

    # リセット
        scoreboard players reset $Random Temporary

# 演出
    playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1 1.1
    playsound minecraft:block.glass.break player @a ~ ~ ~ 1 1
    particle minecraft:block blue_ice ~ ~3 ~ 4 4 4 10 1000
    particle minecraft:block ice ~ ~3 ~ 4 4 4 10 1000
    schedule function asset:artifact/0383.i_scream_ice_cream/trigger/3.1.message 2s append
    fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:frosted_ice replace minecraft:water[level=0]

# 移動速度低下付与
    effect give @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..5] slowness 30 4

# ダメージ
    # 与えるダメージ = 113
        data modify storage lib: Argument.Damage set value 113f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# 範囲5m以内のエンティティを対象に
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..5] run function lib:damage/
# リセット
    function lib:damage/reset