

#import "NRHiddenStatusBarViewController.h"

@interface NRHiddenStatusBarViewController ()

@end

@implementation NRHiddenStatusBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}


@end
