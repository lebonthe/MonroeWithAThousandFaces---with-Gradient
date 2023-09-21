//
//  ViewController.swift
//  MonroeWithAThousandFaces
//
//  Created by Min Hu on 2023/9/3.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    // 連接夢露原圖
    @IBOutlet weak var marilynOriginImageView: UIImageView!
    // 連接四個 UIView
    @IBOutlet weak var hairView: UIView!
    @IBOutlet weak var lipsAndTeethView: UIView!
    @IBOutlet weak var eyeShadowView: UIView!
    @IBOutlet weak var faceView: UIView!
    // 屬於 Marilyn segmentedControl
    // 連接顏色 Slider
    @IBOutlet weak var faceRedColor: UISlider!
    @IBOutlet weak var faceGreenColor: UISlider!
    @IBOutlet weak var faceBlueColor: UISlider!
    
    @IBOutlet weak var hairRedColor: UISlider!
    @IBOutlet weak var hairGreenColor: UISlider!
    @IBOutlet weak var hairBlueColor: UISlider!
    
    @IBOutlet weak var lipsAndTeethRedColor: UISlider!
    @IBOutlet weak var lipsAndTeethGreenColor: UISlider!
    @IBOutlet weak var lipsAndTeethBlueColor: UISlider!
    
    @IBOutlet weak var eyeShadowRedColor: UISlider!
    @IBOutlet weak var eyeShadowGreenColor: UISlider!
    @IBOutlet weak var eyeShadowBlueColor: UISlider!
    
    @IBOutlet weak var backgroundRedColor: UISlider!
    @IBOutlet weak var backgroundGreenColor: UISlider!
    @IBOutlet weak var backgroundBlueColor: UISlider!
    
    @IBOutlet weak var alpha: UISlider!
    
    //  屬於 Frame & Gradiant segmentedControl
    @IBOutlet weak var BorderLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    
    @IBOutlet weak var borderSlider: UISlider!

    @IBOutlet weak var frameRedColorSlider: UISlider!
    @IBOutlet weak var frameGreenColorSlider: UISlider!
    @IBOutlet weak var frameBlueColorSlider: UISlider!
 
  //  @IBOutlet weak var gradientView: UIView!
    
    
    
    @IBOutlet weak var backgroundRedColor2: UISlider!
    
    @IBOutlet weak var backgroundGreenColor2: UISlider!
    
    @IBOutlet weak var backgroundBlueColor2: UISlider!
    
    @IBOutlet weak var backgroundGradientLabel: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var randomChangeBackgroundGradientButtun: UIButton!
    
    @IBOutlet weak var resetBackgroundGradientButtun: UIButton!
    
    @IBOutlet weak var `switch`: UISwitch!
    var segmentedControlIndex = 0
    
    @IBOutlet weak var frameSettingView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gradientLayer.removeFromSuperlayer()
        frameSettingView.isHidden = true
        
        let hairImageView = UIImageView(image: UIImage(named: "Marilyn Hair"))
        // 將 hairImageView 的框架設定與頭髮的圖一樣邊界
        hairImageView.frame = hairView.bounds
        // 設定 hairImageView 的contentMode 為按比例縮放填滿的 AspectFit
        hairImageView.contentMode = .scaleAspectFit
        // 將 hairImageView 設定為頭髮圖片的遮罩
        hairView.mask = hairImageView
        hairView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        // 將臉的 RGB 滑塊的 thumb 移動到中央
        hairRedColor.setValue(0.5, animated: true)
        hairGreenColor.setValue(0.5, animated: true)
        hairBlueColor.setValue(0.5, animated: true)
        
        let lipsAndTeethImageView = UIImageView(image: UIImage(named: "Marilyn Lips and Teeth"))
        lipsAndTeethImageView.frame = lipsAndTeethView.bounds
        lipsAndTeethImageView.contentMode = .scaleAspectFit
        lipsAndTeethView.mask = lipsAndTeethImageView
        lipsAndTeethView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        lipsAndTeethRedColor.setValue(0.5, animated: true)
        lipsAndTeethGreenColor.setValue(0.5, animated: true)
        lipsAndTeethBlueColor.setValue(0.5, animated: true)
        
        let faceImageView = UIImageView(image: UIImage(named: "Marilyn Face"))
        faceImageView.frame = faceView.bounds
        faceImageView.contentMode = .scaleAspectFit
        faceView.mask = faceImageView
        faceView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        faceRedColor.setValue(0.5, animated: true)
        faceGreenColor.setValue(0.5, animated: true)
        faceBlueColor.setValue(0.5, animated: true)
        
        let eyeShadowImageView = UIImageView(image: UIImage(named: "Marilyn Eye Shadow"))
        eyeShadowImageView.frame = eyeShadowView.bounds
        eyeShadowImageView.contentMode = .scaleAspectFit
        eyeShadowView.mask = eyeShadowImageView
        eyeShadowView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        eyeShadowRedColor.setValue(0.5, animated: true)
        eyeShadowGreenColor.setValue(0.5, animated: true)
        eyeShadowBlueColor.setValue(0.5, animated: true)
        
        
        
        marilynOriginImageView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        backgroundRedColor.setValue(0.5, animated: true)
        backgroundGreenColor.setValue(0.5, animated: true)
        backgroundBlueColor.setValue(0.5, animated: true)
        
        alpha.setValue(0, animated: true)

    }

    @IBAction func changeBackgroundColor(_ sender: Any) {
        marilynOriginImageView.backgroundColor = UIColor(red: CGFloat(backgroundRedColor.value), green: CGFloat(backgroundGreenColor.value), blue: CGFloat(backgroundBlueColor.value), alpha: CGFloat(alpha.value))
        
        
    }
    @IBAction func changeEyeShadowColor(_ sender: Any) {
        eyeShadowView.backgroundColor = UIColor(red: CGFloat(eyeShadowRedColor.value), green: CGFloat(eyeShadowGreenColor.value), blue: CGFloat(eyeShadowBlueColor.value), alpha: CGFloat(alpha.value))
    }
    
    @IBAction func changeLipsAndTeethColor(_ sender: Any) {
        lipsAndTeethView.backgroundColor = UIColor(red: CGFloat(lipsAndTeethRedColor.value), green: CGFloat(lipsAndTeethGreenColor.value), blue: CGFloat(lipsAndTeethBlueColor.value), alpha: CGFloat(alpha.value))
        
        
    }
    @IBAction func changeHairColor(_ sender: Any) {
        hairView.backgroundColor = UIColor(red: CGFloat(hairRedColor.value), green: CGFloat(hairGreenColor.value), blue: CGFloat(hairBlueColor.value), alpha: CGFloat(alpha.value))
        
    }
    @IBAction func changeFaceColor(_ sender: Any) {
        faceView.backgroundColor = UIColor(red: CGFloat(faceRedColor.value), green: CGFloat(faceGreenColor.value), blue: CGFloat(faceBlueColor.value), alpha: CGFloat(alpha.value))
    }
    

    
    
    
    
    
    @IBAction func randomChangeColor(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.3, animations: {
            self.faceRedColor.setValue(.random(in: 0...1), animated: true)
            self.faceGreenColor.setValue(.random(in: 0...1), animated: true)
            self.faceBlueColor.setValue(.random(in: 0...1), animated: true)
            
            self.hairRedColor.setValue(.random(in: 0...1), animated: true)
            self.hairGreenColor.setValue(.random(in: 0...1), animated: true)
            self.hairBlueColor.setValue(.random(in: 0...1), animated: true)
            
            self.lipsAndTeethRedColor.setValue(.random(in: 0...1), animated: true)
            self.lipsAndTeethGreenColor.setValue(.random(in: 0...1), animated: true)
            self.lipsAndTeethBlueColor.setValue(.random(in: 0...1), animated: true)
            
            self.eyeShadowRedColor.setValue(.random(in: 0...1), animated: true)
            self.eyeShadowGreenColor.setValue(.random(in: 0...1), animated: true)
            self.eyeShadowBlueColor.setValue(.random(in: 0...1), animated: true)
            
            self.backgroundRedColor.setValue(.random(in: 0...1), animated: true)
            self.backgroundGreenColor.setValue(.random(in: 0...1), animated: true)
            self.backgroundBlueColor.setValue(.random(in: 0...1), animated: true)
            
            self.alpha.setValue(.random(in: 0...1), animated: true)
        }){(finished) in
            self.faceView.backgroundColor = UIColor(red: CGFloat(self.faceRedColor.value), green: CGFloat(self.faceGreenColor.value), blue: CGFloat(self.faceBlueColor.value), alpha: CGFloat(self.alpha.value))
            
            
            self.hairView.backgroundColor = UIColor(red: CGFloat(self.hairRedColor.value), green: CGFloat(self.hairGreenColor.value), blue: CGFloat(self.hairBlueColor.value), alpha: CGFloat(self.alpha.value))
            
            
            self.lipsAndTeethView.backgroundColor = UIColor(red: CGFloat(self.lipsAndTeethRedColor.value), green: CGFloat(self.lipsAndTeethGreenColor.value), blue: CGFloat(self.lipsAndTeethBlueColor.value), alpha: CGFloat(self.alpha.value))
            
            
            self.eyeShadowView.backgroundColor = UIColor(red: CGFloat(self.eyeShadowRedColor.value), green: CGFloat(self.eyeShadowGreenColor.value), blue: CGFloat(self.eyeShadowBlueColor.value), alpha: CGFloat(self.alpha.value))
            
            
            self.marilynOriginImageView.backgroundColor = UIColor(red: CGFloat(self.backgroundRedColor.value), green: CGFloat(self.backgroundGreenColor.value), blue: CGFloat(self.backgroundBlueColor.value), alpha: CGFloat(self.alpha.value))
            
        }
    }
    
    
    
    @IBAction func resetColor(_ sender: UIButton) {
        viewDidLoad()
        
    }
    
    @IBAction func clickSegmentedControl(_ sender: UISegmentedControl) {
        segmentedControlIndex = segmentedControl.selectedSegmentIndex
       
        if  segmentedControlIndex == 1 {
            frameSettingView.isHidden = false
            if `switch`.isOn != true{
                backgroundRedColor2.isHidden = true
                backgroundGreenColor2.isHidden = true
                backgroundBlueColor2.isHidden = true
                randomChangeBackgroundGradientButtun.isHidden = true
                resetBackgroundGradientButtun.isHidden = true
                gradientLayer.removeFromSuperlayer()
            } else{
                backgroundRedColor2.isHidden = false
                backgroundGreenColor2.isHidden = false
                backgroundBlueColor2.isHidden = false
                randomChangeBackgroundGradientButtun.isHidden = false
                resetBackgroundGradientButtun.isHidden = false
            }
            
            
        } else{
            frameSettingView.isHidden = true
            
        }
        
    }
    
    @IBAction func changeBorder(_ sender: UISlider) {
        marilynOriginImageView.clipsToBounds = true
        marilynOriginImageView.layer.borderWidth = CGFloat(borderSlider.value)
    }
    
    @IBAction func changeFrameColor(_ sender: Any) {
       
        marilynOriginImageView.layer.borderColor = CGColor(red: CGFloat(frameRedColorSlider.value), green: CGFloat(frameGreenColorSlider.value), blue: CGFloat(frameBlueColorSlider.value), alpha: 1)
    }
    
    @IBAction func randomChangeFrameColor(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3, animations: {
            self.frameRedColorSlider.setValue(.random(in: 0...1), animated: true)
            self.frameGreenColorSlider.setValue(.random(in: 0...1), animated: true)
            self.frameBlueColorSlider.setValue(.random(in: 0...1), animated: true)

        }){(finished)in
            self.marilynOriginImageView.layer.borderColor = CGColor(red: CGFloat(self.frameRedColorSlider.value), green: CGFloat(self.frameGreenColorSlider.value), blue: CGFloat(self.frameBlueColorSlider.value), alpha: 1)
        
    }
    }
    
    @IBAction func resetFrameColor(_ sender: Any) {
        UIView.animate(withDuration: 0.3, animations: {
            self.frameRedColorSlider.setValue(0, animated: true)
            self.frameGreenColorSlider.setValue(0, animated: true)
            self.frameBlueColorSlider.setValue(0, animated: true)
        }){(Finished)in
            self.marilynOriginImageView.layer.borderColor = CGColor(red: CGFloat(self.frameRedColorSlider.value), green: CGFloat(self.frameGreenColorSlider.value), blue: CGFloat(self.frameBlueColorSlider.value), alpha: 1)
        }
    }

    var backgroundColorFirst = UIColor.white.cgColor
    var backgroundColorSecond = UIColor.white.cgColor
    
    var gradientLayer = CAGradientLayer()
    
    
    @IBAction func changeGradientLayer(_ sender: Any) {
        // 設定漸變圖層的尺寸與夢露原圖相同
        gradientLayer.frame = marilynOriginImageView.bounds
        // 漸層使用第一個顏色是 merilyn 頁籤的背景色
        backgroundColorFirst = CGColor(red: CGFloat(backgroundRedColor.value), green: CGFloat(backgroundGreenColor.value), blue: CGFloat(backgroundBlueColor.value), alpha: 1)
        // 漸層使用第二個顏色是  Frame & Gradient 頁籤的 Background Gradient
        backgroundColorSecond = CGColor(red: CGFloat(backgroundRedColor2.value), green: CGFloat(backgroundGreenColor2.value), blue: CGFloat(backgroundBlueColor2.value), alpha: 0.1)
        // 將上面兩個顏色設定為漸層的顏色
        gradientLayer.colors = [backgroundColorFirst, backgroundColorSecond]
        // 設定漸層為左右變化，因此固定 y 軸，只改變 x 軸
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0)
        //將漸層加入到夢露原圖中
        marilynOriginImageView.layer.addSublayer(gradientLayer)
    }
    
   @IBAction func randomChangeGradient(_ sender: UIButton) {
        gradientLayer.frame = marilynOriginImageView.bounds
        
        backgroundRedColor2.setValue(.random(in: 0...1), animated: true)
        backgroundGreenColor2.setValue(.random(in: 0...1), animated: true)
        backgroundBlueColor2.setValue(.random(in: 0...1), animated: true)
        
        let backgroundColorFirst = CGColor(red: CGFloat(backgroundRedColor.value), green: CGFloat(backgroundGreenColor.value), blue: CGFloat(backgroundBlueColor.value), alpha: 1)
        
        let backgroundColorSecond = CGColor(red: CGFloat(backgroundRedColor2.value), green: CGFloat(backgroundGreenColor2.value), blue: CGFloat(backgroundBlueColor2.value), alpha: 1)

        
        marilynOriginImageView.layer.addSublayer(gradientLayer)
    
        gradientLayer.frame = marilynOriginImageView.bounds
        UIView.animate(withDuration: 0.3, animations:{
            self.backgroundRedColor2.setValue(.random(in: 0...1), animated: true)
            self.backgroundGreenColor2.setValue(.random(in: 0...1), animated: true)
            self.backgroundBlueColor2.setValue(.random(in: 0...1), animated: true)
            
        }){(finished)in
            self.gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            self.gradientLayer.endPoint = CGPoint(x: 1, y: 0)
            self.gradientLayer.colors = [backgroundColorFirst, backgroundColorSecond]
            self.marilynOriginImageView.layer.addSublayer(self.gradientLayer)
        }
 
    }

    @IBAction func resetGradient(_ sender: UIButton) {
        gradientLayer.removeFromSuperlayer()
        backgroundRedColor2.setValue(0.5, animated: true)
        backgroundGreenColor2.setValue(0.5, animated: true)
        backgroundBlueColor2.setValue(0.5, animated: true)
        
    }
 
    @IBAction func gradientSwitch(_ sender: UISwitch) {
        if sender.isOn != true{
            backgroundRedColor2.isHidden = true
            backgroundGreenColor2.isHidden = true
            backgroundBlueColor2.isHidden = true
            randomChangeBackgroundGradientButtun.isHidden = true
            resetBackgroundGradientButtun.isHidden = true
            gradientLayer.removeFromSuperlayer()
        } else{
            backgroundRedColor2.isHidden = false
            backgroundGreenColor2.isHidden = false
            backgroundBlueColor2.isHidden = false
            randomChangeBackgroundGradientButtun.isHidden = false
            resetBackgroundGradientButtun.isHidden = false
        }
        
        
        
        
    }
    
}


