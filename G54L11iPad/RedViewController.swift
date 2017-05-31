//
//  RedViewController.swift
//  G54L11
//
//  Created by Ivan Vasilevich on 5/30/17.
//  Copyright © 2017 Smoosh Labs. All rights reserved.
//

import UIKit
import AVFoundation

class RedViewController: UIViewController {
  
  var player: AVAudioPlayer!
  
  @IBOutlet weak var centerLabel: UILabel!
  
  var stringFromPrevVC = ""
//  var prevVC: ViewController!// to send data back
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
//    splitViewController
    // Do any additional setup after loading the view.
    preferredContentSize = CGSize(width: 240, height: 240)
    if UIDevice.current.userInterfaceIdiom == .pad {
      
    }
    
    centerLabel.text = stringFromPrevVC
    let textView = UITextView(frame: CGRect(x: 0, y: 30, width: 300, height: 60))
    textView.isEditable = false
    textView.isSelectable = false
    textView.text = "@IBOutlet weak var centerLabel: UILabel!var stringFromPrevVC = @IBOutlet weak var centerLabel: UILabel!var stringFromPrevVC@IBOutlet weak var centerLabel: UILabel!var stringFromPrevVC@IBOutlet weak var centerLabel: UILabel!var stringFromPrevVC@IBOutlet weak var centerLabel: UILabel!var stringFromPrevVC@IBOutlet weak var centerLabel: UILabel!var stringFromPrevVC@IBOutlet weak var centerLabel: UILabel!var stringFromPrevVC@IBOutlet weak var centerLabel: UILabel!var stringFromPrevVC@IBOutlet weak var centerLabel: UILabel!var stringFromPrevVC@IBOutlet weak var centerLabel: UILabel!var stringFromPrevVC@IBOutlet weak var centerLabel: UILabel!var stringFromPrevVC@IBOutlet weak var centerLabel: UILabel!var stringFromPrevVC@IBOutlet weak var centerLabel: UILabel!var stringFromPrevVC@IBOutlet weak var centerLabel: UILabel!var stringFromPrevVC@IBOutlet weak var centerLabel: UILabel!var stringFromPrevVC"
    self.view.addSubview(textView)
    
    setupPlayer()
  }
  
  func setupPlayer() {
    let filePath = Bundle.main.path(forResource: "pew-pew-lei", ofType: "caf")!
//    let url = URL(string: filePath)!
    let data = try! NSData.init(contentsOfFile: filePath) as Data
    player = try! AVAudioPlayer(data: data, fileTypeHint: nil)
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    player.play()
  }
  
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    player.stop()
  }
  
  
}
