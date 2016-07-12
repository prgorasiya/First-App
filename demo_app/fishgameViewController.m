

#import "fishgameViewController.h"

@interface fishgameViewController ()

@end

@implementation fishgameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


//Handling switch value change event and making all the switches on/off at once
- (IBAction)switchValueChanged:(UISwitch*)sender
{
    for (id object in self.view.subviews)
    {
        if([object isKindOfClass:[UISwitch class]])
        {
            UISwitch *sw = (UISwitch*)object;
            if([sw isOn])
            {
                [sw setOn:NO animated:YES];
            }
            else
            {
                [sw setOn:YES animated:YES];
            }
        }
    }
    
    //If the main switch is off then turn it on and if not then turn it off
    if([sender isOn])
    {
        [sender setOn:NO animated:YES];
    }
    else
    {
        [sender setOn:YES animated:YES];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
