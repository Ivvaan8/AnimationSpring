//
//  ViewController.swift
//  AnimationSpring
//
//  Created by Иван Майоров on 03.05.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var animationView: SpringView!
    @IBOutlet var presetlLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var repeatLabel: UILabel!
    // MARK: - Propertyes
    private var animation = AnimationSettings.getComponentsForAnimation()
    // MARK: - View Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
        animationView.layer.cornerRadius = animationView.frame.size.height / 6
        
        
        
    }
    // MARK: - Private Function
    private func setupLabels() {
        presetlLabel.text = "animation: \(animation.animationName)"
        curveLabel.text = "curve: \(animation.curveAnimation)"
        forceLabel.text = "force: \(String(format: "%.3f", animation.forceAnimation))"
        durationLabel.text = "duration: \(String(format: "%.3f", animation.durationAnimation))"
        delayLabel.text = "delay: \(String(format: "%.3f", animation.delayAination))"
        repeatLabel.text = "repeat \(animation.repeatAnimation)"
    }

    // MARK: - IBAction
    @IBAction func changeAnimationAction(_ sender: SpringButton) {
        setupLabels()
        animationView.animation = animation.animationName
        animationView.curve = animation.curveAnimation
        animationView.force = animation.forceAnimation
        animationView.duration = animation.durationAnimation
        animationView.delay = animation.delayAination
        animationView.repeatCount = Float(animation.repeatAnimation)
        animationView.animate()
        
        animation = AnimationSettings.getComponentsForAnimation()
        sender.setTitle("Next \(animation.animationName)", for: .normal)
        
        
        
    }
    

}

