import UIKit

protocol Delegate{
    func toString() -> String
    func fromString(_ str: String) -> Void
    
}

class ViewController: UIViewController, Delegate {
    
    // MARK: - Properties
    @IBOutlet weak var btnGetStarted: UIButton!
    //var string: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnGetStarted.layer.borderWidth = 1.8
        btnGetStarted.layer.borderColor = UIColor.white.cgColor
    }
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    
    // MARK: - Methods
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    func toString() -> String {
        return "Scene1, Hello Scene2"
    }
    
    func fromString(_ str: String) {
        //string = str
        print(str)
    }
    
    
    // MARK: - Actions
    @IBAction func btnGetStartedClick(_ sender: UIButton) {
        //let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard?.instantiateViewController(withIdentifier: "sbd2") as! ViewController2
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    //    @IBAction func btnGetStartedMultipleTap(_ sender: UIButton, event: UIEvent) {
    //        let touch: UITouch = event.allTouches!.first!
    //        if (touch.tapCount == 2) {
    //            // Your magic will be here!
    //        }
    //    }
    
    
}

