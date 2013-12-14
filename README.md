coreFilters
===========

This is a class to apply filters to the Image in iOS.

Important points:-
  1. A singleton class
  2. 20 image filters
  3. Two methods aonly and you can apply in 20 filters
  
What you have to do:-
  Step 1. Call singleton class iCoreFilters.h in your project.
  Step 2. Your picker view methods are as follows:
  
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    // populating picker view with array 
    return [[coreFilter getAllFilters] objectAtIndex:row];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    // return component
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    // return count of arrays of filters
    return [coreFilter getCountOfAllFilters];
}
  
  Step 3. Call the singleton object in view didload like this:
  
  - (void)viewDidLoad
{
    [super viewDidLoad];
 
    coreFilter=[iCoreFilters sharedInstanceSingleton];
    
}

  Step 4. Picker view select row
  
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
   
    // call the method and get in image object
    UIImage *setImg= [coreFilter applyFilters:row image:self.filterImage.image];
    
    // set the image to the imageView
    self.filterImage.image=setImg;
    
}

-------------------------------- Thanks --------------------------------
