//
//  HKMapViewController.h
//  Work From Cafe
//
//  Created by Błażej Biesiada on 1/12/12.
//  Copyright (c) 2012 HackKrk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@class HKCafes;


@interface HKMapViewController : UIViewController <MKMapViewDelegate> {
    
}


- (id)initWithCafes:(HKCafes *)cafes;

@property (nonatomic, readwrite, strong) CLLocation *locationToShow;


@end
