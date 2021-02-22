//
//  ViewController.swift
//  UIImageViewDemo
//
//  Created by Trista on 2021/2/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //取得螢幕的尺寸
        let fullScreenSize = UIScreen.main.bounds.size
        
        
        //使用 UIImageView(frame:) 建立一個 UIImageView
        //UIImageView 的尺寸為150x150，01圖片的尺寸也為150x150，所以可以剛好適合視圖的尺寸，而如果當圖片尺寸與 UIImageView 的尺寸不一樣時，就需要使用 UIImageView 的一個屬性contentMode來設置顯示模式
        var myImageView = UIImageView(
          frame: CGRect(
            x: 0, y: 0, width: 150, height: 150))

        //使用 UIImage(named:) 放置圖片檔案
        //UIImageView不是直接放置圖片檔案名稱，而是要藉由UIImage(named:)建立，再設置給UIImageView的屬性image
        //其他元件需要使用圖片，也都是使用UIImage(named:)設置圖片檔案
        myImageView.image = UIImage(named: "01.jpg")

        //設置新的位置並放入畫面中
        myImageView.center = CGPoint(
          x: fullScreenSize.width * 0.5,
          y: fullScreenSize.height * 0.15)
        self.view.addSubview(myImageView)
        
        
        //使用 UIImageView(image:) 建立一個 UIImageView
        myImageView = UIImageView(
          image: UIImage(named: "02.jpg"))

        //設置原點及尺寸
        //UIImageView 的尺寸為150x150，02圖片的尺寸也為150x150，所以可以剛好適合視圖的尺寸，而如果當圖片尺寸與 UIImageView 的尺寸不一樣時，就需要使用 UIImageView 的一個屬性contentMode來設置顯示模式
        myImageView.frame = CGRect(
          x: 0, y: 0, width: 150, height: 150)

        //設置新的位置並放入畫面中
        myImageView.center = CGPoint(
          x: fullScreenSize.width * 0.5,
          y: fullScreenSize.height * 0.35)
        self.view.addSubview(myImageView)
        
        
        //使用 UIImageView(image:, highlightedImage:) 建立一個 UIImageView
        //設置一個UIImage外，還設置了一個 highlighted 狀態時的UIImage
        myImageView = UIImageView(
          image: UIImage(named: "02.jpg"),
          highlightedImage: UIImage(named: "03.jpg"))

        //設置原點及尺寸
        //UIImageView 的尺寸為150x150，02和03圖片的尺寸也為150x150，所以可以剛好適合視圖的尺寸，而如果當圖片尺寸與 UIImageView 的尺寸不一樣時，就需要使用 UIImageView 的一個屬性contentMode來設置顯示模式
        myImageView.frame = CGRect(
          x: 0, y: 0, width: 150, height: 150)

        //設置圖片 highlighted 狀態
        myImageView.isHighlighted = true

        //設置新的位置並放入畫面中
        myImageView.center = CGPoint(
          x: fullScreenSize.width * 0.5,
          y: fullScreenSize.height * 0.55)
        self.view.addSubview(myImageView)
        
        
        //如果當圖片尺寸與 UIImageView 的尺寸不一樣時，就需要使用 UIImageView 的屬性contentMode來設置顯示模式
        //建立一個 UIImageView
        myImageView = UIImageView(
          image: UIImage(named: "04.jpg"))
        
        //設置原點及尺寸
        //UIImageView 的尺寸為300x300，04圖片的尺寸為400x267，所以沒剛好適合視圖的尺寸，而如果當圖片尺寸與 UIImageView 的尺寸不一樣時，就需要使用 UIImageView 的一個屬性contentMode來設置顯示模式
        //將 UIImageView 底色設為黃色，可以看到最後會超出原本 UIImageView 設置的尺寸，並在上面露出了一些底色
        myImageView.frame = CGRect(
          x: 0, y: 0, width: 300, height: 300)

        //設置背景顏色
        myImageView.backgroundColor = UIColor.yellow

        //設置圖片顯示模式
        //contentMode屬性預設的值為ScaleToFill，會自動縮放圖片以填滿 UIImageView 的尺寸
        myImageView.contentMode = .bottomLeft //以左下角為準

        //設置新的位置並放入畫面中
        myImageView.center = CGPoint(
          x: fullScreenSize.width * 0.5,
          y: fullScreenSize.height * 0.8)
        self.view.addSubview(myImageView)
        
    }


}

