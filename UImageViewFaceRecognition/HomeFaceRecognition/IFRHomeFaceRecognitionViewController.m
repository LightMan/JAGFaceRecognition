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

@property (strong, nonatomic) JAGFaceRecognition *imageViewFaceRecognition;

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

- (JAGFaceRecognition *)imageViewFaceRecognition
{
    if(!_imageViewFaceRecognition)
    {
        _imageViewFaceRecognition = JAGFaceRecognition.new;
    }
    
    return _imageViewFaceRecognition;
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
    self.imageViewFaceRecognition.delegate = self;
    self.imageViewFaceRecognition.faceBorderColor = [UIColor yellowColor];
    self.imageViewFaceRecognition.faceBorderWidth = 3.0f;
    self.imageViewFaceRecognition.faceRounded = YES;
    
    [self.imageViewFaceRecognition faceDetectorWithImageView:self.photoImageView completion:^(BOOL success, UIImageView *imageView, NSArray *faces) {
        self.photoImageView = imageView;
    }];
}

#pragma mark - PROTOCOLS & DELEGATES
#pragma mark - JAGFaceRecognition Delegate

- (void)faceRecognition:(JAGFaceRecognition *)faceRecognition face:(JAGFaceFeature *)face
{
    NSLog(@"AQUI");
}

@end
