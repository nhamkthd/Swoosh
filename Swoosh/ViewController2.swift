import UIKit

class ViewController2: UIViewController {
    
    // MARK: - Properties
    @IBOutlet weak var btnMens: UIButton!
    @IBOutlet weak var btnWomens: UIButton!
    @IBOutlet weak var btnCoed: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    var delegate: Delegate?
    //var string: String?
    var strF: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnMens.layer.borderColor = UIColor.white.cgColor
        btnWomens.layer.borderColor = UIColor.white.cgColor
        btnCoed.layer.borderColor = UIColor.white.cgColor
        btnNext.layer.borderColor = UIColor.white.cgColor
        btnMens.layer.borderWidth = 1.8
        btnWomens.layer.borderWidth = 1.8
        btnCoed.layer.borderWidth = 1.8
        btnNext.layer.borderWidth = 1.8
        
        //string = delegate?.toString()
        print(delegate?.toString() ?? "")
    }
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    
    // MARK: Mathods
    
    // MARK: - Actions
    @IBAction func btnBack(_ sender: Any) {
        if let mess = strF {
            delegate?.fromString(mess)
        }
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func btnMensClick(_ sender: UIButton) {
        strF = "Mens"
    }
    @IBAction func btnWomensClick(_ sender: UIButton) {
        strF = "Womens"
    }
    @IBAction func btnCoedClick(_ sender: UIButton) {
        strF = "Co-ed"
    }
    @IBAction func btnNextClick(_ sender: UIButton) {
        if let mess = strF {
            delegate?.fromString(mess)
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    // MARK: - Navigation
}
