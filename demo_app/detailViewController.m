

#import "detailViewController.h"

@interface detailViewController ()

@end

@implementation detailViewController
{
    NSMutableArray *array;
}
@synthesize scrollView, imageView, segmentControl, lblText;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //Setting the background image and adding the image view into scrollview
    UIImage *bgImage = [UIImage imageNamed:@"nature_wall.jpg"];
    UIImageView *largeImageView = [[UIImageView alloc] initWithImage:bgImage];
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [scrollView setContentSize:largeImageView.frame.size];
    [scrollView addSubview:largeImageView];
    
    NSArray *tempArray = [[NSArray alloc] initWithObjects:@"image_1.jpg", @"image_2.jpg", @"image_3.jpg", nil];
    array = [[NSMutableArray alloc] init];
    
    //Adding all the images to an array for animating them as a slideshow
    for (int i = 0; i < tempArray.count; i++)
    {
        [array addObject:[UIImage imageNamed:[tempArray objectAtIndex:i]]];
    }
    
    [self.view bringSubviewToFront:segmentControl];
    [self.view bringSubviewToFront:imageView];
    [self.view bringSubviewToFront:lblText];
}


//Handling segment change event and displaying image as per segment index selection
- (IBAction)segmentIndexChanged:(id)sender
{
    NSInteger index = segmentControl.selectedSegmentIndex;
    [imageView stopAnimating];
    [lblText setHidden:YES];
    
    switch (index)
    {
        case 0:
            imageView.image = [array objectAtIndex:index];
            break;
            
        case 1:
            imageView.image = [array objectAtIndex:index];
            break;
            
        case 2:
            imageView.image = [array objectAtIndex:index];
            break;
            
        case 3:
        {
            //Animating all the images 
            imageView.animationImages = array;
            imageView.animationDuration = 2.0;
            [imageView startAnimating];
        }
            break;
            
        default:
            break;
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
