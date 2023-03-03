#> asset:artifact/0278.reveille/trigger/3.1.play_manager
#
# 現在の演奏タイムラインを取得、タイムラインに応じて
#
# @within
#   function asset:artifact/0278.reveille/trigger/3.main
#   function asset:artifact/0278.reveille/trigger/3.1.play_manager

# 現在のタイムライン(AECのAge)を取得
scoreboard players add $Timeline 7Q.Timeline 1

# Durationが200以下だったら演奏function実行
execute if score $Timeline 7Q.Timeline matches 0..200 run function asset:artifact/0278.reveille/trigger/3.2.play_reveille

# Durationが200だったら朝にする
execute if score $Timeline 7Q.Timeline matches 200.. run function asset:artifact/0278.reveille/trigger/3.3.set_morning

# 次tickのmanager実行予約
execute if score $Timeline 7Q.Timeline matches 0..200 run schedule function asset:artifact/0278.reveille/trigger/3.1.play_manager 1t