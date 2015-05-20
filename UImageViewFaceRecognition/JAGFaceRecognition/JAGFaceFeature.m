//
//  JAGFaceFeature.m
//  UImageViewFaceRecognition
//
//  Created by Jesus Antonio Gil on 20/5/15.
//  Copyright (c) 2015 Jesus Antonio Gil. All rights reserved.
//

#import "JAGFaceFeature.h"


@implementation JAGFaceFeature

- (instancetype)initWithFaceFeature:(CIFaceFeature *)faceFeature
{
    self = [super init];
    if(self)
    {
        self.bounds = faceFeature.bounds;
        self.hasLeftEyePosition = faceFeature.hasLeftEyePosition;
        self.leftEyePosition = faceFeature.leftEyePosition;
        self.hasRightEyePosition = faceFeature.hasRightEyePosition;
        self.rightEyePosition = faceFeature.rightEyePosition;
        self.hasMouthPosition = faceFeature.hasMouthPosition;
        self.mouthPosition = faceFeature.mouthPosition;
        
        self.hasTrackingID = faceFeature.hasTrackingID;
        self.trackingID = faceFeature.trackingID;
        self.hasTrackingFrameCount = faceFeature.hasTrackingFrameCount;
        self.trackingFrameCount = faceFeature.trackingFrameCount;
        
        self.hasFaceAngle = faceFeature.hasFaceAngle;
        self.faceAngle = faceFeature.faceAngle;
        
        self.hasSmile = faceFeature.hasSmile;
        self.leftEyeClosed = faceFeature.leftEyeClosed;
        self.rightEyeClosed = faceFeature.rightEyeClosed;
    }
    
    return self;
}

+ (NSArray *)getFaceFeatures:(NSArray *)faceFeatures
{
    NSMutableArray *features = NSMutableArray.new;
    
    for(CIFaceFeature *feature in faceFeatures)
    {
        JAGFaceFeature *faceFeature = [[JAGFaceFeature alloc] initWithFaceFeature:feature];
        [features addObject:faceFeature];
    }
    
    return [features copy];
}

@end
