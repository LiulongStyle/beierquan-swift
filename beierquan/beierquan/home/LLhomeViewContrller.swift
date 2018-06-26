//
//  LLhomeViewContrller.swift
//  beierquan
//
//  Created by 刘龙 on 2018/6/20.
//  Copyright © 2018年 刘龙. All rights reserved.
//

import UIKit

class LLhomeViewContrller: LLbaseViewController,UITextFieldDelegate,UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate  {
    
    @IBOutlet weak var nullView: UIView!
    
    @IBOutlet weak var topH: NSLayoutConstraint!

    @IBOutlet weak var mainScrollView: UIScrollView!
    
    @IBOutlet weak var heightOfScro: NSLayoutConstraint!
    
    @IBOutlet weak var adresslabel: UILabel!
    
    @IBOutlet weak var adressButton: UIButton!
    
    @IBOutlet weak var homeTF: UITextField!
    
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var banerView: UIView!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var todayView: UIView!
    
    @IBOutlet weak var toptf: UITextField!
    
    @IBOutlet weak var topView: UIView!
    
    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var image3: UIImageView!
    
    lazy var labelArr: NSMutableArray  = NSMutableArray()
    lazy var imageArr: NSMutableArray  = NSMutableArray()
    lazy var dataArr: NSMutableArray  = NSMutableArray()
    lazy var picArr: NSMutableArray  = NSMutableArray()
    lazy var TTdataArr: NSMutableArray  = NSMutableArray()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
    }
    
    
    func setUI(){
        btn1.verticalImageupAndTitledown(10)
        btn2.verticalImageupAndTitledown(10)
        btn3.verticalImageupAndTitledown(10)
        
        let image = UIImageView(image: UIImage(named: "s_mall_home_search_icon"))
        homeTF.leftViewMode = .always
        homeTF.leftView = image
        homeTF.borderStyle = .none
        
        let image1 = UIImageView(image: UIImage(named: "s_mall_home_search_icon"))
        toptf.leftViewMode = .always
        toptf.leftView = image1
        toptf.borderStyle = .none
        toptf.alpha = 0

        todayView.layer.shadowColor = UIColor(red: 244/255, green: 225/255, blue: 292/255, alpha: 1).cgColor
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 135
        tableView.separatorStyle = .none
        tableView.isScrollEnabled = false
        tableView.register(UINib.init(nibName: "LLhomeCell", bundle: nil), forCellReuseIdentifier: "LLhomeCell")

        tableView.register(UINib(nibName: NSStringFromClass(LLhomeCell.self), bundle: nil), forCellReuseIdentifier: NSStringFromClass(LLhomeCell.self))

        mainScrollView.delegate = self
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LLhomeCell", for: indexPath) as! LLhomeCell

        return cell
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if (scrollView.contentOffset.y > 40 && scrollView.contentOffset.y < 60) {
            
            topView.alpha = scrollView.contentOffset.y/60;
        }
        if (scrollView.contentOffset.y < 40) {
            
            topView.alpha = 0;
        }
        if (scrollView.contentOffset.y  > 60) {
            topView.alpha = 1;
        }
    }
    
    
    
    
    
    
    
    
    

}
