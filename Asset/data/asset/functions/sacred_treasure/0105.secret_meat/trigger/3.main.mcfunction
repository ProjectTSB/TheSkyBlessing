#> asset:sacred_treasure/0105.secret_meat/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0105.secret_meat/trigger/2.check_condition
#> private
# @private
    #declare score_holder $Random
# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# タグ付与
    tag @s add 2X.Effect

# 体力回復
    data modify storage lib: Argument.Heal set value 6666
    function lib:heal/modifier
    function lib:heal/
# リセット
    data remove storage lib: Argument

# 効果
# MP回復量
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,105,0]
    # 補正値
        data modify storage api: Argument.Amount set value 0.5
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply"
# 補正の追加
    function api:player_modifier/mp_regen/add

# 攻撃力
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,105,0]
    # 補正値
        data modify storage api: Argument.Amount set value 0.2
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply"
# 補正の追加
    function api:player_modifier/attack/base/add

# HP回復量-100%
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,105,0]
    # 補正値
        data modify storage api: Argument.Amount set value -1
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply"
# 補正の追加
    function api:player_modifier/heal/add

# ランダムなメッセージ
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation $Random Temporary %= $3 Const
    # メッセージ出力
        execute if score $Random Temporary matches 0 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> ","color":"white"},{"text":"やってやるってんだよォ！！","color":"white"}]
        execute if score $Random Temporary matches 1 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> ","color":"white"},{"text":"うわあ゛あ゛あ゛あッッ！！","color":"white"}]
        execute if score $Random Temporary matches 2 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> ","color":"white"},{"text":"アハハハハハハハハハハ！！","color":"white"}]
    # リセット
        scoreboard players reset $Random Temporary
# スコア付与
    scoreboard players set @s 2X.EffectTime 800
# 見えやすいカウントダウンとして
    effect give @s unluck 40 0

# スケジュール
    schedule function asset:sacred_treasure/0105.secret_meat/trigger/effect/schedule 1t replace