// custom label 
X.layer.borderWidth = 5
X.layer.borderColor = UIColor.brown.cgColor
//custom border cicle
X.layer.cornerRadius = 10
//custom background inside
X.clipsToBounds = true
//change font label
X.font = UIFont(name: "X", size: X)
// Make cricle label
    lbl_customP2_1.layer.cornerRadius = lbl_customP2_1.frame.size.width / 2 //hinnh vuong => hinh tron
// meg center
 lbl_customP2_1.textAlignment = .center
// text flied part 1
txt_demo.isSecureTextEntry = false // turn off securetext entry
txt_demo.keyboardType = .numberPad //appear key board type
txt_demo.placeholder = "🦊hello friend "// set placeholder
// viet tat cua cac kieu dang
label = lbl
textfiled = txt 
image view = igm 
//img view
        img_change.image = UIImage(named: "Turtwig-–-Tổng-quan-về-Pokemon-Turtwig")
        img_cricle.layer.cornerRadius = img_cricle.frame.size.width / 2
        img_cricle.clipsToBounds = true
        img_cricle.contentMode = UIImageView.ContentMode.scaleAspectFit
        img_border.layer.borderWidth = 3
        img_border.layer.borderColor = UIColor.yellow.cgColor 
//Lay anh tu internet
        let url:URL = URL (string: "https://luuly1979.files.wordpress.com/2011/03/world-map-background-390622.jpg")!
        //Luu y:
        //Co https,co duoi la jpg hoac,... 
        
        do
        {
            let dulieu:Data = try Data(contentsOf: url)
            imgHinh.image = UIImage(data: dulieu)
            
        }
        catch
        {
            print("khong lay duoc du lieu")
        }
// doi voi http can :
//chay vao stackoverflow lay code
//down hinh
//lam y nhu tren 
//doi link
//vao info.plist
//paste code vao
//link video https://www.youtube.com/watch?v=aaYtEVBpklk&index=20&list=PLzrVYRai0riSlAocQR3BvHCtEhcKa204E

//AlertcController
let alert:UIAlertController = UIAlertController(title: "Thông Báo" , message:"Xin chào Các Bạn" , preferredStyle: UIAlertController.Style.alert)
        
        let btnOK:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        
        alert.addAction(btnOK)
        
        present(alert, animated: true, completion: nil)
//chèn phím 
        let alert:UIAlertController = UIAlertController(title: "Thông Báo", message: "Vui lòng ", preferredStyle: UIAlertController.Style.alert)
        
        let btnHello:UIAlertAction = UIAlertAction(title: "Hello", style: UIAlertAction.Style.destructive) { (btn) in
            print("hello everyone")
        }
        
        let btnXinChao:UIAlertAction = UIAlertAction(title: "Xin chao", style: UIAlertAction.Style.cancel) { (btn) in
            print("Xin chào các bạn")
        }
//chen textfield vao alert
override func viewDidAppear(_ animated: Bool) // hàm chạy sau khi view đid load chạy
alert.addTextField(configurationHandler: nil)//Add textfield to alert
//lấy giá trị từ textfield in ra
    btnOK:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (btnOK) in
    let emai:String = alert.textFields![0].text!
    let pass:String = alert.textFields![1].text!   
    print(emai,pass)
    }