#> asset_manager:effect/display/
#
# 全 Effect の処理後の保存データから、プレイヤーの表示メッセージを組み立てる。
# イベント中の付与・削除・再付与を反映した一覧を使う。
#
# 呼出元の tick が @s をプレイヤーに限定し、OhMyDat の参照先をそのプレイヤーへ合わせて呼ぶ。
#
# @input as entity
# @within function asset_manager:effect/tick

# 表示用に Effects 配列を複製し、末尾から取り出せる順序にする
# 保存データは変更せず、コピーした配列を反転して末尾から取り出すことで保存順を保つ。
# 呼出時には他の array session が開いていないこと。この関数内で表示用の array session を開き、閉じる。
    data remove storage asset:effect Display
    function lib:array/session/open
    data modify storage lib: Array set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
    function lib:array/reverse
    data modify storage asset:effect DisplayEffects set from storage lib: Array
    function lib:array/session/close

# 表示対象のアイコンを集め、メッセージを構築する
# 個々の Visible 判定は display/foreach が行う。
    execute if data storage asset:effect DisplayEffects[0] run function asset_manager:effect/display/foreach
    function asset_manager:effect/display/construct_message/

# 表示走査用の一時データを片付ける
# 生成したメッセージの保存と Display の破棄は construct_message が担当する。
    data remove storage asset:effect DisplayEffects
    data remove storage asset:effect TargetEffect
