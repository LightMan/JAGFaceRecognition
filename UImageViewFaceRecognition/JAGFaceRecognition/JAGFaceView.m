//
//  JAGFaceView.m
//  UImageViewFaceRecognition
//
//  Created by Jesus Antonio Gil on 20/5/15.
//  Copyright (c) 2015 Jesus Antonio Gil. All rights reserved.
//

#import "JAGFaceView.h"


@implementation JAGFaceView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self)
    {
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onFaceAnnotationTap:)]];
    }
    
    return self;
}

#pragma mark - ACCESSORS

-(void)setFaceBackgroundColor:(UIColor *)faceBackgroundColor
{
    _faceBackgroundColor = faceBackgroundColor;
    self.backgroundColor = faceBackgroundColor;
}

- (void)setFaceBorderColor:(UIColor *)faceBorderColor
{
    _faceBorderColor = faceBorderColor;
    self.layer.borderColor = faceBorderColor.CGColor;
}

- (void)setFaceBorderWidth:(CGFloat)faceBorderWidth
{
    _faceBorderWidth = faceBorderWidth;
    self.layer.borderWidth = faceBorderWidth;
}

- (void)setFaceRounded:(BOOL)faceRounded
{
    _faceRounded = faceRounded;
    self.layer.cornerRadius = faceRounded? self.frame.size.height / 2 : 0.f;
}

#pragma mark - ACTIONS

- (void)onFaceAnnotationTap:(id)sender
{
    if([self.delegate respondsToSelector:@selector(didInteractWithFaceFeature:)])
    {
        [self.delegate didInteractWithFaceFeature:self.faceFeature];
    }
}

@end
