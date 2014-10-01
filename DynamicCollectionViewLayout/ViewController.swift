//
//  ViewController.swift
//  DynamicCollectionViewLayout
//
//  Created by Todd Grooms on 10/1/14.
//  Copyright (c) 2014 GroomsyDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!

    let quotes = [
        "Let me explain something to you. Um, I am not \"Mr. Lebowski\". You're Mr. Lebowski. I'm the Dude. So that's what you call me. You know, that or, uh, His Dudeness, or uh, Duder, or El Duderino if you're not into the whole brevity thing.",
        "Let me tell you something, pendejo. You pull any of your crazy shit with us, you flash a piece out on the lanes, I'll take it away from you, stick it up your ass and pull the fucking trigger 'til it goes \"click.\"",
        "Way out west there was this fella... fella I wanna tell ya about. Fella by the name of Jeff Lebowski. At least that was the handle his loving parents gave him, but he never had much use for it himself. Mr. Lebowski, he called himself \"The Dude\". Now, \"Dude\" - that's a name no one would self-apply where I come from. But then there was a lot about the Dude that didn't make a whole lot of sense. And a lot about where he lived, likewise. But then again, maybe that's why I found the place so darned interestin'. They call Los Angeles the \"City Of Angels.\" I didn't find it to be that, exactly. But I'll allow there are some nice folks there. 'Course I can't say I've seen London, and I ain't never been to France. And I ain't never seen no queen in her damned undies, so the feller says. But I'll tell you what - after seeing Los Angeles, and this here story I'm about to unfold, well, I guess I seen somethin' every bit as stupefyin' as you'd see in any of them other places. And in English, too. So I can die with a smile on my face, without feelin' like the good Lord gypped me. Now this here story I'm about to unfold took place back in the early '90s - just about the time of our conflict with Sad'm and the I-raqis. I only mention it because sometimes there's a man... I won't say a hero, 'cause, what's a hero? But sometimes, there's a man. And I'm talkin' about the Dude here. Sometimes, there's a man, well, he's the man for his time and place. He fits right in there. And that's the Dude, in Los Angeles. And even if he's a lazy man - and the Dude was most certainly that. Quite possibly the laziest in Los Angeles County, which would place him high in the runnin' for laziest worldwide. But sometimes there's a man, sometimes, there's a man. Aw. I lost my train of thought here. But... aw, hell. I've done introduced him enough."
    ]

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        self.collectionView.contentInset = ({
            var contentInset = self.collectionView.contentInset
            contentInset.top = 20
            return contentInset
        })()

        self.collectionView.scrollIndicatorInsets = ({
            var scrollIndicatorInsets = self.collectionView.scrollIndicatorInsets
            scrollIndicatorInsets.top = 20
            return scrollIndicatorInsets
        })()

        let width = self.view.bounds.size.width
        let height = 200 as CGFloat

        let flowLayout = self.collectionView.collectionViewLayout as UICollectionViewFlowLayout
        flowLayout.estimatedItemSize = CGSizeMake(width, height)
    }

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.quotes.count
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("QuoteCollectionViewCell", forIndexPath: indexPath) as QuoteCollectionViewCell
        cell.quoteLabel.text = self.quotes[indexPath.item]
        return cell
    }

    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        NSLog("ContentSize: %@", NSStringFromCGSize(collectionView.contentSize))
    }

}

