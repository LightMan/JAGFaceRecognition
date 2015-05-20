//
//  JAGFaceFeature.h
//  UImageViewFaceRecognition
//
//  Created by Jesus Antonio Gil on 20/5/15.
//  Copyright (c) 2015 Jesus Antonio Gil. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface JAGFaceFeature : NSObject

@property (nonatomic, assign) CGRect bounds;
@property (nonatomic, assign) BOOL hasLeftEyePosition;
@property (nonatomic, assign) CGPoint leftEyePosition;
@property (nonatomic, assign) BOOL hasRightEyePosition;
@property (nonatomic, assign) CGPoint rightEyePosition;
@property (nonatomic, assign) BOOL hasMouthPosition;
@property (nonatomic, assign) CGPoint mouthPosition;

@property (nonatomic, assign) BOOL hasTrackingID;
@property (nonatomic, assign) int trackingID;
@property (nonatomic, assign) BOOL hasTrackingFrameCount;
@property (nonatomic, assign) int trackingFrameCount;

@property (nonatomic, assign) BOOL hasFaceAngle;
@property (nonatomic, assign) float faceAngle;

@property (nonatomic, assign) BOOL hasSmile;
@property (nonatomic, assign) BOOL leftEyeClosed;
@property (nonatomic, assign) BOOL rightEyeClosed;


+ (NSArray *)getFaceFeatures:(NSArray *)faceFeatures;

@end
