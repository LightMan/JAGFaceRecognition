//
//  JAGFaceView.h
//  UImageViewFaceRecognition
//
//  Created by Jesus Antonio Gil on 20/5/15.
//  Copyright (c) 2015 Jesus Antonio Gil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JAGFaceFeature.h"


@protocol JAGFaceViewDelegate <NSObject>

@optional

- (void)didInteractWithFaceFeature:(JAGFaceFeature *)face;

@end


@interface JAGFaceView : UIView

@property (nonatomic, weak) id <JAGFaceViewDelegate> delegate;
@property (strong, nonatomic) UIColor *faceBackgroundColor;
@property (strong, nonatomic) UIColor *faceBorderColor;
@property (assign, nonatomic) CGFloat faceBorderWidth;
@property (assign, nonatomic) BOOL faceRounded;

@property (strong, nonatomic) JAGFaceFeature *faceFeature;

@end
