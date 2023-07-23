#> asset:mob/0317.haruclaire/_index.d
# @private

#> tag
# @within function asset:mob/0317.haruclaire/**
    ## API用
    #declare tag SpreadMarker
    
    ## 処理用
    #declare tag 8T.ModelRoot animated_javaモデルにつける処理簡略化用のタグ 
    #declare tag 8T.Marker.SpawnPoint 召喚中心点の記録
    #declare tag 8T.Weapon.HasSword 剣モード

    ## 処理用(一時)
    #declare tag 8T.Temp.Me 汎用処理に使う一時的なタグ，自身に付与
    #declare tag 8T.Temp.GeneralTarget 汎用処理に使う一時的なタグ，対象に付与
    #declare tag 8T.Temp.NotArmor 非スーパーアーマー状態，この間に攻撃されると怯む
    #declare tag 8T.Temp.Damage 怯み中判別用処理

    #declare tag 8T.Temp.TargetModel  animated_javaモデルにつける対応付け用の一時的なタグ
    #declare tag 8T.Temp.PlayRareAnimation レアアニメーション再生用の一時的なタグ
    #declare tag 8T.Temp.AttackTarget 攻撃対象の決定に使う一時的なタグ

    ## スキル処理用
    #declare tag 8T.SkillEv.Rod.Idle.MoveToHome 待機移動モード・初期位置に移動
    #declare tag 8T.SkillEv.Rod.Idle.MoveToSide 待機移動モード・すべる
    #declare tag 8T.SkillEv.Rod.IcePillar.AttackPos つらら攻撃位置

    ## スキル：杖モード
    #declare tag 8T.Skill.Rod.Idle 待機
    #declare tag 8T.Skill.Rod.Attack 杖殴り
    #declare tag 8T.Skill.Rod.IcePillar つらら
    #declare tag 8T.Skill.Rod.Laser レーザー
    #declare tag 8T.Skill.Rod.IceBullet 氷弾
    #declare tag 8T.Skill.Rod.Shot 射撃
    #declare tag 8T.Skill.Rod.MoveShot.Right 移動射撃
    #declare tag 8T.Skill.Rod.MoveShot.Left 移動射撃
    #declare tag 8T.Skill.Rod.Teleport テレポート

    ## スキル：剣モード
    #declare tag 8T.Skill.Sword.Idle 待機
    #declare tag 8T.Skill.Sword.Damage 怯み
    #declare tag 8T.Skill.Sword.Slash 斬撃コンボ
    #declare tag 8T.Skill.Sword.Warp ワープ斬りコンボ