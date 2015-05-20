//
//  IFRHomeFaceRecognitionViewController.m
//  UImageViewFaceRecognition
//
//  Created by Jesus Antonio Gil on 20/5/15.
//  Copyright (c) 2015 Jesus Antonio Gil. All rights reserved.
//

#import "IFRHomeFaceRecognitionViewController.h"
#import "JAGFaceRecognition.h"


@interface IFRHomeFaceRecognitionViewController () <JAGFaceRecognitionDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic) IBOutlet UIButton *recognizeButton;

@property (strong, nonatomic) JAGFaceRecognition *faceRecognition;

@end


@implementation IFRHomeFaceRecognitionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.recognizeButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.recognizeButton.layer.borderWidth = 2.0f;
    self.recognizeButton.layer.cornerRadius = self.recognizeButton.frame.size.height / 2;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - ACCESSORS

- (JAGFaceRecognition *)faceRecognition
{
    if(!_faceRecognition)
    {
        _faceRecognition = JAGFaceRecognition.new;
    }
    
    return _faceRecognition;
}

#pragma mark - ACTIONS

- (IBAction)onRecognizeButtonTap:(id)sender
{
    [self recognizeFacesWithUIImageView:self.photoImageView];
}

#pragma mark - PRIVATE

- (void)recognizeFacesWithUIImageView:(UIImageView *)imageView
{
    //CUSTOMIZE FACE DETECTION
    self.faceRecognition.delegate = self;
    self.faceRecognition.faceBackgroundColor = [UIColor clearColor];
    self.faceRecognition.faceBorderColor = [UIColor yellowColor];
    self.faceRecognition.faceBorderWidth = 3.0f;
    self.faceRecognition.faceRounded = YES;
    
    [self.faceRecognition faceDetectorWithImageView:self.photoImageView completion:^(BOOL success, UIImageView *imageView, NSArray *faces) {
        self.photoImageView = imageView;
    }];
}

#pragma mark - PROTOCOLS & DELEGATES
#pragma mark - JAGFaceRecognition Delegate

- (void)faceRecognition:(JAGFaceRecognition *)faceRecognition face:(JAGFaceFeature *)face
{
    NSLog(@"%@",face);
}

@end
