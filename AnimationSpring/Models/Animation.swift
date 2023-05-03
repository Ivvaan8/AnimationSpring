

struct AnimationSettings {
    let animationName: String
    let curveAnimation: String
    let forceAnimation: Double
    let durationAnimation: Double
    let delayAination: Double
    let repeatAnimation: Int
    
    
    static func getComponentsForAnimation() -> AnimationSettings {
        AnimationSettings(
            animationName: Animation.shared.animation.randomElement()!,
            curveAnimation: Animation.shared.curves.randomElement()!,
            forceAnimation: Double.random(in: 0.1...3.0),
            durationAnimation: Double.random(in: 0.3...2.0),
            delayAination: Double.random(in: 0.0...3.0),
            repeatAnimation: Int.random(in: 1...2)
        )
    }
    
}

