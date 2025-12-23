#> asset:trader/15/select_artifact/
#
#
#
# @within function asset:trader/15/register

# 販売する神器をプールから選択する
# 1. 攻略段階に合ったランクの神器
# 2. 攻略段階までのランクの神器
#
# また、低確率で、このプールが隠し神器のプールに上書きされる

# 攻略度取得
    function api:global_vars/game_progress
    execute store result score $Current Temporary run data get storage api: Return.Progress 100

# globalで定義された攻略度によるシャード解放の割合をそれぞれ取得
    execute store result score $UnlockLv1 Temporary run data get storage global UnlockShardProgress[0]
    execute store result score $UnlockLv2 Temporary run data get storage global UnlockShardProgress[1]
    execute store result score $UnlockLv3 Temporary run data get storage global UnlockShardProgress[2]
    execute store result score $UnlockLv4 Temporary run data get storage global UnlockShardProgress[3]

# APIで通常シャードのプールと隠し神器のプールを取得
    function api:artifact/get_registry/normal
    function api:artifact/get_registry/hide

# 1, 2それぞれで神器を選択
    function asset:trader/15/select_artifact/current_progress/
    function asset:trader/15/select_artifact/up_to_progress/

# リセット
    scoreboard players reset $Current Temporary
