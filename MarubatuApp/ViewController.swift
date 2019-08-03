//
//  ViewController.swift
//  MarubatuApp
//
//  Created by 豊岡正紘 on 2019/08/03.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //問題のラベル
    @IBOutlet weak var questionLabel: UILabel!
    
    //現在の問題の番号
    var currentQuestionNum: Int = 0
    
    // 問題を管理
    let questions: [[String: Any]] = [
        [ "question": "iPhoneアプリを開発する統合環境はZcodeである",
          "answer": false
        ],
        [ "question": "Xcode画面の右側にはユーティリティーズがある",
          "answer": true
        ],
        [ "question": "UILabelは文字列を表示する際に利用する",
          "answer": true
        ],
        [ "question": "ドラえもんは常に地面から浮いている",
          "answer": true
        ],
    ]
    
    //クエッションラベルにテキストを入れるための関数
    func showQuestion() {
        //現在の問題を取得
        let question = questions[currentQuestionNum]
    
        //Stringにダウンキャスティングできるか確認
        if let que = question["question"] as? String {
            //ラベルにテキストを代入
            questionLabel.text = que
        }
    }
    
    func checkAnswer(yourAnser: Bool) {
        let question = questions[currentQuestionNum]
        
        if let ans = question["answer"] as? Bool {
            if yourAnser == ans {
                //正解
                //currentQuestionNumを1足して次の問題に進む
                currentQuestionNum += 1
            } else {
                //不正解
            }
        }else{
            print("答えが入っていません")
            return
        }
        // 問題を表示します。
        // 正解であれば次の問題が、不正解であれば同じ問題が再表示されます。
        showQuestion()
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //関数の呼び出し
        showQuestion()
    }

    @IBAction func tappedYesButton(_ sender: Any) {
        
    }
    
    @IBAction func tappedNoButton(_ sender: Any) {
    }
    

}

