# 新規ページを1つ作る
App.page = new Page

   # ページの背景色を設定
   backgroundColor: '#aabbff'
   
   # 縦方向にスクロールできるように設定
   scrollVertical: yes


# リスト要素を作成
myList = new List

   # リスト全体のY座標を設定
   y: 100
   
   # リスト全体の幅を設定
   width: 800
   
   # リスト内のアイテム数を設定
   length: 40
   
   # アイテムを水平方向に並べる
   horizontal: yes

# リスト要素を中央に配置
myList.centerX()


# 「Unsplash」から写真素材を取得するURL
url = 'http://unsplash.it/180/180?image='


# each()関数を使って40個のアイテムを設定
myList.each (item, index) ->
  if not item
  
    # アイテムを生成
    item = new ListItem
    
    # アイテムの幅・高さを設定
    width: 180
    height: 180
    
    # アイテム同士の隙間を設定
    margin: 10
    
    # 透明度の設定
    opacity: 0.7
    
    # 角丸の設定
    borderRadius: 10
    
    # アニメーションをスムーズに動かす
    transition: yes
    
    # アイテムの背景色を白色に設定
    backgroundColor: 'white'
    
    # 「image」オプションに「Unsplash」のURLと写真番号を設定
    image: url+index*12
    			
    
    # マウスがアイテム要素内に入った時
    mouseIn: ->
    
      this.opacity = 1  # アイテム要素の透明度を設定
      this.scale = 1.1  # アイテム要素のサイズを設定
      
      
      # マウスがアイテム要素の外に出た時
    mouseOut: ->
    
      this.opacity = 0.7  # アイテム要素の透明度を設定
      this.scale = 1  # アイテム要素のサイズを設定
        
	
  return item
