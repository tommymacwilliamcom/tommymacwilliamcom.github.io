/**
 *  MainViewController.h
 *  Section3App6
 *  Tommy MacWilliam, 2011
 *
 */

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate> {
    UIButton *_pdfButton;
    UIButton *_movieButton;
    UIButton *_youtubeButton;
    UIButton *_wordButton;
    UIButton *_spreadsheetButton;
}

@property (nonatomic, retain) IBOutlet UIButton *pdfButton;
@property (nonatomic, retain) IBOutlet UIButton *movieButton;
@property (nonatomic, retain) IBOutlet UIButton *youtubeButton;
@property (nonatomic, retain) IBOutlet UIButton *wordButton;
@property (nonatomic, retain) IBOutlet UIButton *spreadsheetButton;

- (IBAction)showPdf;
- (IBAction)showMovie;
- (IBAction)showYoutube;
- (IBAction)showWord;
- (IBAction)showSpreadsheet;
- (void)showUrl:(NSString *)url;

@end
