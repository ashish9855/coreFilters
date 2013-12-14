//
//  iViewController.m
//  coreFilters
//
//  Created by ADMIN on 12/12/13.
//  Copyright (c) 2013 Individual. All rights reserved.
//

#import "iViewController.h"

@interface iViewController ()

@end

@implementation iViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
 
    coreFilter=[[iCoreFilters alloc]init];
    NSArray *arr=[coreFilter getAllFilters];
    NSLog(@"%@",arr);
    arrOfFilters= [NSArray arrayWithObjects:@"CIAdditionCompositing",@"CIGaussianBlur",@"CIPhotoEffectFade",@"CISepiaTone",@"CIPixellate",@"CIColorClamp",@"CIFalseColor",@"CIDotScreen",@"CIVortexDistortion",@"CIUnsharpMask",@"CIColorClamp",@"CIColorControls",@"CIColorDodgeBlendMode",@"CIColorInvert",@"CIColorMap",@"CIColorMonochrome",@"CIDarkenBlendMode",@"CIDissolveTransition",@"CIPhotoEffectChrome", nil];

}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [arrOfFilters objectAtIndex:row];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return [arrOfFilters count];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    switch (row) {
        case 0:
        {
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            CIImage *inputImage2 =[[CIImage alloc]initWithImage:[UIImage imageNamed:@"bckgImage4.png"]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIAdditionCompositing"];

            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:inputImage2 forKey:@"inputBackgroundImage"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
            
        }
            break;
        case 1:{
            
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIGaussianBlur"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:[NSNumber numberWithFloat:8.0f] forKey:@"inputRadius"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
            
        }
            break;
            
        case 2:{
            
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIPhotoEffectFade"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
            
        }
            break;
        case 3:{
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CISepiaTone"];
            
            [adjustmentFilter setDefaults];
            [adjustmentFilter setValue:inputImage forKey:@"inputImage"];
            [adjustmentFilter setValue:[NSNumber numberWithFloat:1.0f] forKey:@"inputIntensity"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
           }
            break;
            
        case 4:{
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIPixellate"];
            
            [adjustmentFilter setDefaults];
            [adjustmentFilter setValue:inputImage forKey:@"inputImage"];
            
            [adjustmentFilter setDefaults];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
        }
            break;

        case 5:{
            
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIColorClamp"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            
            [adjustmentFilter setDefaults];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
            
        }
            break;

        case 6:{
            
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIFalseColor"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:[CIColor colorWithRed:0.0 green:0.2 blue:0.0] forKey:@"inputColor0"];
            [adjustmentFilter setValue:[CIColor colorWithRed:0.0 green:0.0 blue:1.0] forKey:@"inputColor1"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
            
        }
            break;
            
        case 7:{
            
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIDotScreen"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setDefaults];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
            
        }
            break;
            
        case 8:{
            
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIVortexDistortion"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setDefaults];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
            
        }
            break;
        case 9:{
            
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIUnsharpMask"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setDefaults];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
            
        }
            break;

        case 10:{
            
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIColorClamp"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:[CIVector vectorWithX:0.1 Y:0.1 Z:0.1 W:0.1] forKey:@"inputMinComponents"];
           [adjustmentFilter setValue:[CIVector vectorWithX:1 Y:1 Z:1 W:1] forKey:@"inputMaxComponents"];
            
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
            
        }
            break;
           
        case 11:{
            
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIColorControls"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:[NSNumber numberWithFloat:0.8f] forKey:@"inputSaturation"];
            [adjustmentFilter setValue:[NSNumber numberWithFloat:0.1f] forKey:@"inputBrightness"];
            [adjustmentFilter setValue:[NSNumber numberWithFloat:0.5f] forKey:@"inputContrast"];

            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
            
        }
            break;
            
        case 12:{
            
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            
            // apply filter
            CIImage *inputImage2 =[[CIImage alloc]initWithImage:[UIImage imageNamed:@"bckgImage4.png"]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIColorDodgeBlendMode"];
            
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:inputImage2 forKey:@"inputBackgroundImage"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
            
        }
            break;
        case 13:{
            
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIColorInvert"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setDefaults];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
            
        }
            break;
        case 14:{
            
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            

            CIImage *inputImage2 =[[CIImage alloc]initWithImage:[UIImage imageNamed:@"bckgImage4.png"]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIColorMap"];
            
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:inputImage2 forKey:@"inputGradientImage"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
            
        }
            break;
            
        case 15:{
            
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIColorMonochrome"];
            
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:[CIColor colorWithRed:0.3f green:0.6f blue:0.7f] forKey:@"inputColor"];
            [adjustmentFilter setValue:[NSNumber numberWithFloat:0.2f] forKey:@"inputIntensity"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
            
        }
            break;
        case 16:{
            
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            CIImage *inputImage2 =[[CIImage alloc]initWithImage:[UIImage imageNamed:@"bckgImage1.png"]];
            
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIDarkenBlendMode"];
            
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:inputImage2 forKey:@"inputBackgroundImage"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
            
        }
            break;
        case 17:{
            
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            CIImage *inputImage2 =[[CIImage alloc]initWithImage:[UIImage imageNamed:@"bckgImage1.png"]];
            
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIDissolveTransition"];
            
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:inputImage2 forKey:@"inputTargetImage"];
            [adjustmentFilter setValue:[NSNumber numberWithFloat:0.2f] forKey:@"inputTime"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
            
        }
            break;

        case 18:{
            
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
            
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[self.filterImage.image CGImage]];
            
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIPhotoEffectChrome"];
            
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            self.filterImage.image = newImage;
            
        }
            break;
            
            default:
        {
            self.filterImage.image = [UIImage imageNamed:@"bckgImage4.png"];
        }
            break;
    }

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
