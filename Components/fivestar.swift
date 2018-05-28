//
//  fivestar.swift
//  TestStar
//
//  Created by Bonato Pierantonio on 24/05/18.
//  Copyright © 2018 Bonato Pierantonio. All rights reserved.
//

import Foundation
import UIKit

protocol fiveStarDelegate {
    func fiveStartValueDidChange( sender:fiveStar, value:Double)
}

@IBDesignable
class fiveStar:UIView {
    
    var view: UIView!
    private var nibName: String = "fivestar"
    var delegate:fiveStarDelegate?
    
    @IBOutlet weak var star1: UIButton!
    @IBOutlet weak var star2: UIButton!
    @IBOutlet weak var star3: UIButton!
    @IBOutlet weak var star4: UIButton!
    @IBOutlet weak var star5: UIButton!
    
    
    
    @IBOutlet weak var lblTest: UILabel!
    public override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.setup()
        
    }
    
    public required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        self.setup()
    }
    
    func setup() {
        
        self.view = UINib(nibName: nibName, bundle: Bundle(for: type(of: self))).instantiate(withOwner: self, options: nil)[0] as! UIView
        self.view.frame = bounds
        self.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        self.addSubview(self.view)
    }
    
    @IBInspectable var value : Double = 0.0 {
        didSet {
            setImage(value)
        }
    }
    
    private func setImage( _ value: Double) {
        if let _ = star1 {
            switch value {
            case _ where value  < 0.5:
                star1.setImage(UIImage(named: "star_empty"), for: .normal)
                star2.setImage(UIImage(named: "star_empty"), for: .normal)
                star3.setImage(UIImage(named: "star_empty"), for: .normal)
                star4.setImage(UIImage(named: "star_empty"), for: .normal)
                star5.setImage(UIImage(named: "star_empty"), for: .normal)
            case _ where value  < 1:
                star1.setImage(UIImage(named: "star_half"), for: .normal)
                star2.setImage(UIImage(named: "star_empty"), for: .normal)
                star3.setImage(UIImage(named: "star_empty"), for: .normal)
                star4.setImage(UIImage(named: "star_empty"), for: .normal)
                star5.setImage(UIImage(named: "star_empty"), for: .normal)
            case _ where value  < 1.5:
                star1.setImage(UIImage(named: "star_full"), for: .normal)
                star2.setImage(UIImage(named: "star_empty"), for: .normal)
                star3.setImage(UIImage(named: "star_empty"), for: .normal)
                star4.setImage(UIImage(named: "star_empty"), for: .normal)
                star5.setImage(UIImage(named: "star_empty"), for: .normal)
            case _ where value  < 2:
                star1.setImage(UIImage(named: "star_full"), for: .normal)
                star2.setImage(UIImage(named: "star_half"), for: .normal)
                star3.setImage(UIImage(named: "star_empty"), for: .normal)
                star4.setImage(UIImage(named: "star_empty"), for: .normal)
                star5.setImage(UIImage(named: "star_empty"), for: .normal)
            case _ where value  < 2.5:
                star1.setImage(UIImage(named: "star_full"), for: .normal)
                star2.setImage(UIImage(named: "star_full"), for: .normal)
                star3.setImage(UIImage(named: "star_empty"), for: .normal)
                star4.setImage(UIImage(named: "star_empty"), for: .normal)
                star5.setImage(UIImage(named: "star_empty"), for: .normal)
            case _ where value  < 3:
                star1.setImage(UIImage(named: "star_full"), for: .normal)
                star2.setImage(UIImage(named: "star_full"), for: .normal)
                star3.setImage(UIImage(named: "star_half"), for: .normal)
                star4.setImage(UIImage(named: "star_empty"), for: .normal)
                star5.setImage(UIImage(named: "star_empty"), for: .normal)
            case _ where value  < 3.5:
                star1.setImage(UIImage(named: "star_full"), for: .normal)
                star2.setImage(UIImage(named: "star_full"), for: .normal)
                star3.setImage(UIImage(named: "star_full"), for: .normal)
                star4.setImage(UIImage(named: "star_empty"), for: .normal)
                star5.setImage(UIImage(named: "star_empty"), for: .normal)
            case _ where value  < 4:
                star1.setImage(UIImage(named: "star_full"), for: .normal)
                star2.setImage(UIImage(named: "star_full"), for: .normal)
                star3.setImage(UIImage(named: "star_full"), for: .normal)
                star4.setImage(UIImage(named: "star_half"), for: .normal)
                star5.setImage(UIImage(named: "star_empty"), for: .normal)
            case _ where value  < 4.5:
                star1.setImage(UIImage(named: "star_full"), for: .normal)
                star2.setImage(UIImage(named: "star_full"), for: .normal)
                star3.setImage(UIImage(named: "star_full"), for: .normal)
                star4.setImage(UIImage(named: "star_full"), for: .normal)
                star5.setImage(UIImage(named: "star_empty"), for: .normal)
            case _ where value < 5:
                star1.setImage(UIImage(named: "star_full"), for: .normal)
                star2.setImage(UIImage(named: "star_full"), for: .normal)
                star3.setImage(UIImage(named: "star_full"), for: .normal)
                star4.setImage(UIImage(named: "star_full"), for: .normal)
                star5.setImage(UIImage(named: "star_half"), for: .normal)
            case 5:
                star1.setImage(UIImage(named: "star_full"), for: .normal)
                star2.setImage(UIImage(named: "star_full"), for: .normal)
                star3.setImage(UIImage(named: "star_full"), for: .normal)
                star4.setImage(UIImage(named: "star_full"), for: .normal)
                star5.setImage(UIImage(named: "star_full"), for: .normal)
                default:
                star1.setImage(UIImage(named: "star_empty"), for: .normal)
                star2.setImage(UIImage(named: "star_empty"), for: .normal)
                star3.setImage(UIImage(named: "star_empty"), for: .normal)
                star4.setImage(UIImage(named: "star_empty"), for: .normal)
                star5.setImage(UIImage(named: "star_empty"), for: .normal)
            }
        }
    }
    @IBAction func btnTouch(_ sender: UIButton) {
        if sender == star1 {
            if value == 1 {
                value = 0
            } else {
                value = 1
            }
        }
        if sender == star2 {
            value = 2
        }
        if sender == star3 {
            value = 3
        }
        if sender == star4 {
            value = 4
        }
        if sender == star5 {
            value = 5
        }
        self.delegate?.fiveStartValueDidChange(sender: self, value: self.value)
    }
}
