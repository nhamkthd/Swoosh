import UIKit

class ViewController3: UIViewController {
    // MARK: Properties
    @IBOutlet weak var btnBackStart: UIButton!
    @IBOutlet weak var txtData: UITextField!
    var data: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnBackStart.layer.borderColor = UIColor.white.cgColor
        btnBackStart.layer.borderWidth = 1.8
        txtData.text = data
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: Methods
    
    // MARK: - Actions
    @IBAction func btnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnBackStartClick(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "sbd1")
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
