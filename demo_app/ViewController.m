
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize lblTitle;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    lblTitle.preferredMaxLayoutWidth = CGRectGetWidth(lblTitle.frame);
}


//Handling segment change method for turning music on/off
- (IBAction)segmentIndexChange:(id)sender
{
    if([audioPlayer isPlaying])
    {
        [audioPlayer stop];
    }
    else
    {
        NSString * music = [[NSBundle mainBundle] pathForResource:@"music_file" ofType:@"mp3"];
        NSError *error;
        if(!audioPlayer)
        {
            //Initializing audio player
            audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:music] error:&error];
            audioPlayer.numberOfLoops = -1;
        }
        
        [audioPlayer play];
    }
}



//Tap event handler method for heart button and displaying alert
- (IBAction)heartButtonTapped:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Can you marry me?" message:@"Please select one" delegate:self cancelButtonTitle:@"No,I won't"otherButtonTitles:@"Yes, I will", @"Let me think about it", nil];
    [alert show];
}



//Delegate method of alert view and handling actions as per alert button tapped
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 2)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Can you marry me?" message:@"My love cannot wait!" delegate:self cancelButtonTitle:@"No,I won't"otherButtonTitles:@"Yes, I will", @"Let me think about it", nil];
        [alert show];
    }
    else if (buttonIndex == 0)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Can you marry me?" message:@"My love will never stop!" delegate:self cancelButtonTitle:@"No,I won't"otherButtonTitles:@"Yes, I will", @"Let me think about it", nil];
        [alert show];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
