//
//  QuoteCollectionViewCell.swift
//  DynamicCollectionViewLayout
//
//  Created by Todd Grooms on 10/1/14.
//  Copyright (c) 2014 GroomsyDev. All rights reserved.
//

import UIKit

class QuoteCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var quoteLabelTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var quoteLabelRightConstraint: NSLayoutConstraint!
    @IBOutlet weak var quoteLabelBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var quoteLabelLeftConstraint: NSLayoutConstraint!

    override func preferredLayoutAttributesFittingAttributes(layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes! {

        let preferredLayoutAttributes = layoutAttributes.copy() as UICollectionViewLayoutAttributes

        let quoteLabelSize = self.quoteLabel.sizeThatFits(CGSizeMake(CGRectGetWidth(preferredLayoutAttributes.frame) - self.quoteLabelLeftConstraint.constant - self.quoteLabelRightConstraint.constant, CGFloat.max))

        var frame = preferredLayoutAttributes.frame
        frame.size.height = self.quoteLabelTopConstraint.constant + quoteLabelSize.height + self.quoteLabelBottomConstraint.constant
        preferredLayoutAttributes.frame = frame
        return preferredLayoutAttributes
    }

}
