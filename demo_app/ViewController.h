

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>
{
    AVAudioPlayer *audioPlayer;
}

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentControl;
- (IBAction)segmentIndexChange:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *lblTitle;
- (IBAction)heartButtonTapped:(id)sender;

@end

