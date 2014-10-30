Self-Size UICollecitonViewCell Demo
===================================

A sample application for attempting self-sizing UICollectionViewCells in iOS 8. The sample application is a small application that shows three quotes from [The Big Lebowski](http://www.imdb.com/title/tt0118715/).

The demo application runs perfectly on 4s, 5, and 5s simulators. On the 6 simulator, the contentSize for the collectionView is incorrect, but the collectionView is still displayed correctly (if I manually set the contentSize for the collectionView, the collectionView is rendered correctly). An exception is incurred on the 6s simulator as the size of the view is not the correct size during the view lifecycle methods of viewWillAppear: and viewDidAppear: (the exact exception is: "The behavior of the UICollectionViewFlowLayout is not defined because the item width must be less than the width of the UICollectionView minus the section insets left and right values. Please check the values return by the delegate.").

This has been submitted to Apple as [rdar://18828714](rdar://18828714).
