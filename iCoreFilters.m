//
//  iCoreFilters.m
//  coreFilters
//
//  Created by ADMIN on 12/13/13.
//  Copyright (c) 2013 Individual. All rights reserved.
//

#import "iCoreFilters.h"

@implementation iCoreFilters

+(iCoreFilters *)sharedInstanceSingleton
{
    static iCoreFilters * _sharedInstance=nil;
    static dispatch_once_t OnlyOnce;
    
    dispatch_once(&OnlyOnce,^{
        
        _sharedInstance=[[self alloc]init];
        
    });
    
    return _sharedInstance;
}

#pragma mark --Apply filters

-(UIImage *)applyFilters:(NSInteger)getRow image:(UIImage *)getImage{
    
    switch (getRow) {
        case 0:
        {
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            CIImage *inputImage2 =[[CIImage alloc]initWithImage:[UIImage imageNamed:@"bckgImage4.png"]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIAdditionCompositing"];
            
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:inputImage2 forKey:@"inputBackgroundImage"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
            
        }
            break;
        case 1:{
            
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIGaussianBlur"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:[NSNumber numberWithFloat:8.0f] forKey:@"inputRadius"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
        }
            break;
            
        case 2:{
            
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIPhotoEffectFade"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
            
        }
            break;
        case 3:{
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CISepiaTone"];
            
            [adjustmentFilter setDefaults];
            [adjustmentFilter setValue:inputImage forKey:@"inputImage"];
            [adjustmentFilter setValue:[NSNumber numberWithFloat:1.0f] forKey:@"inputIntensity"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
        }
            break;
            
        case 4:{
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIPixellate"];
            
            [adjustmentFilter setDefaults];
            [adjustmentFilter setValue:inputImage forKey:@"inputImage"];
            
            [adjustmentFilter setDefaults];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
        }
            break;
            
        case 5:{
            
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIColorClamp"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            
            [adjustmentFilter setDefaults];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
            
        }
            break;
            
        case 6:{
            
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIFalseColor"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:[CIColor colorWithRed:0.0 green:0.2 blue:0.0] forKey:@"inputColor0"];
            [adjustmentFilter setValue:[CIColor colorWithRed:0.0 green:0.0 blue:1.0] forKey:@"inputColor1"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
            
        }
            break;
            
        case 7:{
            
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIDotScreen"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setDefaults];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
            
        }
            break;
            
        case 8:{
            
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIVortexDistortion"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setDefaults];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
            
        }
            break;
        case 9:{
            
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIUnsharpMask"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setDefaults];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
            
        }
            break;
            
        case 10:{
            
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIColorClamp"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:[CIVector vectorWithX:0.1 Y:0.1 Z:0.1 W:0.1] forKey:@"inputMinComponents"];
            [adjustmentFilter setValue:[CIVector vectorWithX:1 Y:1 Z:1 W:1] forKey:@"inputMaxComponents"];
            
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
            
        }
            break;
            
        case 11:{
            
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIColorControls"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:[NSNumber numberWithFloat:0.8f] forKey:@"inputSaturation"];
            [adjustmentFilter setValue:[NSNumber numberWithFloat:0.1f] forKey:@"inputBrightness"];
            [adjustmentFilter setValue:[NSNumber numberWithFloat:0.5f] forKey:@"inputContrast"];
            
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
            
        }
            break;
            
        case 12:{
            
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            
            // apply filter
            CIImage *inputImage2 =[[CIImage alloc]initWithImage:[UIImage imageNamed:@"bckgImage4.png"]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIColorDodgeBlendMode"];
            
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:inputImage2 forKey:@"inputBackgroundImage"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
            
        }
            break;
        case 13:{
            
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIColorInvert"];
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setDefaults];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
            
        }
            break;
        case 14:{
            
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            
            
            CIImage *inputImage2 =[[CIImage alloc]initWithImage:[UIImage imageNamed:@"bckgImage4.png"]];
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIColorMap"];
            
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:inputImage2 forKey:@"inputGradientImage"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
            
        }
            break;
            
        case 15:{
            
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIColorMonochrome"];
            
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:[CIColor colorWithRed:0.3f green:0.6f blue:0.7f] forKey:@"inputColor"];
            [adjustmentFilter setValue:[NSNumber numberWithFloat:0.2f] forKey:@"inputIntensity"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
            
        }
            break;
        case 16:{
            
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            CIImage *inputImage2 =[[CIImage alloc]initWithImage:[UIImage imageNamed:@"bckgImage1.png"]];
            
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIDarkenBlendMode"];
            
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:inputImage2 forKey:@"inputBackgroundImage"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
            
        }
            break;
        case 17:{
            
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            CIImage *inputImage2 =[[CIImage alloc]initWithImage:[UIImage imageNamed:@"bckgImage1.png"]];
            
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIDissolveTransition"];
            
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            [adjustmentFilter setValue:inputImage2 forKey:@"inputTargetImage"];
            [adjustmentFilter setValue:[NSNumber numberWithFloat:0.2f] forKey:@"inputTime"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
        }
            break;
            
        case 18:{
            
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            
            // CIIMage from UIIMage
            CIImage *inputImage1 = [[CIImage alloc] initWithCGImage:[getImage CGImage]];
            
            // apply filter
            CIFilter *adjustmentFilter = [CIFilter filterWithName:@"CIPhotoEffectChrome"];
            
            [adjustmentFilter setValue:inputImage1 forKey:@"inputImage"];
            
            // The output CIImage with the sepia effect applied
            CIImage *outputImage = [adjustmentFilter valueForKey:@"outputImage"];
            
            UIImage *newImage = [UIImage imageWithCIImage:outputImage];
            return newImage;
            
        }
            break;
            
        default:
        {
            getImage = [UIImage imageNamed:@"bckgImage4.png"];
            return getImage;
        }
            break;
    }

}


#pragma mark --Get all filters

-(NSArray *)getAllFilters{
    
    arrOfFilters= [NSArray arrayWithObjects:@"CIAdditionCompositing",@"CIGaussianBlur",@"CIPhotoEffectFade",@"CISepiaTone",@"CIPixellate",@"CIColorClamp",@"CIFalseColor",@"CIDotScreen",@"CIVortexDistortion",@"CIUnsharpMask",@"CIColorClamp",@"CIColorControls",@"CIColorDodgeBlendMode",@"CIColorInvert",@"CIColorMap",@"CIColorMonochrome",@"CIDarkenBlendMode",@"CIDissolveTransition",@"CIPhotoEffectChrome", nil];
    return arrOfFilters;
}

#pragma mark --get count of alll filters

-(NSInteger)getCountOfAllFilters{
    
  arrOfFilters= [NSArray arrayWithObjects:@"CIAdditionCompositing",@"CIGaussianBlur",@"CIPhotoEffectFade",@"CISepiaTone",@"CIPixellate",@"CIColorClamp",@"CIFalseColor",@"CIDotScreen",@"CIVortexDistortion",@"CIUnsharpMask",@"CIColorClamp",@"CIColorControls",@"CIColorDodgeBlendMode",@"CIColorInvert",@"CIColorMap",@"CIColorMonochrome",@"CIDarkenBlendMode",@"CIDissolveTransition",@"CIPhotoEffectChrome", nil];
    return [arrOfFilters count];
}

@end
