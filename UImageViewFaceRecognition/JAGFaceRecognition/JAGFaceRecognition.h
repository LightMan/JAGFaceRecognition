//
//  UIImageViewFaceRecognition.h
//  UImageViewFaceRecognition
//
//  Created by Jesus Antonio Gil on 20/5/15.
//  Copyright (c) 2015 Jesus Antonio Gil. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "JAGFaceFeature.h"

@protocol JAGFaceRecognitionDelegate;

typedef void (^JAGFaceRecognitionCompletion)(BOOL success, UIImageView *imageView, NSArray *faces);


@interface JAGFaceRecognition : NSObject

@property (nonatomic, weak) id <JAGFaceRecognitionDelegate> delegate;
@property (strong, nonatomic) UIColor *faceBorderColor;
@property (assign, nonatomic) CGFloat faceBorderWidth;
@property (assign, nonatomic) BOOL faceRounded;

- (void)faceDetectorWithImageView:(UIImageView *)imageView completion:(JAGFaceRecognitionCompletion)completion;

@end



@protocol JAGFaceRecognitionDelegate <NSObject>

@optional

- (void)faceRecognition:(JAGFaceRecognition *)faceRecognition face:(JAGFaceFeature *)face;

@end