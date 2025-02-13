//
//  ViewController.swift
//  CircularColorSlider
//
//  Created by Richa Rich on 13/02/25.
//

import UIKit

class ViewController: UIViewController {
    var progress: CircularProgress!
    
    @IBOutlet weak var vwProgress: CircularProgress!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(white: 0.22, alpha: 1)
        
        progress = CircularProgress(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        progress.startAngle = -90
        progress.progressThickness = 0.4
        progress.trackThickness = 0.4
        progress.clockwise = true
        progress.gradientRotateSpeed = 0.5
        progress.roundedCorners = false
        progress.glowMode = .noGlow
        progress.glowAmount = 0
        progress.set(colors: UIColor.orange ,UIColor.orange, UIColor.orange, UIColor.orange, UIColor.orange)
        progress.center = CGPoint(x: view.center.x, y: view.center.y + 25)
//        view.addSubview(progress)
    }
    
    @IBAction func sliderDidChangeValue(_ sender: UISlider) {
        vwProgress.angle = Double(sender.value)
    }
    
    @IBAction func animateButtonTapped(_ sender: UIButton) {
        vwProgress.animate(fromAngle: 0, toAngle: 360, duration: 5) { completed in
            if completed {
                print("animation stopped, completed")
            } else {
                print("animation stopped, was interrupted")
            }
        }
    }
}


