//
//  MenuController.swift
//  chatApp_clone
//
//  Created by Tuan on 11/04/2022.
//

import UIKit

class MenuController: UIViewController {

    var testArray: [Int] = [1,2,3,4,5,6,7,8,9,10]
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "Message", bundle: nil)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! Message
        view.userColletion.delegate = self
        view.userColletion.dataSource = self
        
        
        let cellNib = UINib(nibName: "UserAvatarCell", bundle: nil)
        view.userColletion.register(cellNib, forCellWithReuseIdentifier: "UserAvatarCell")
        
        
        
        view.messageTable.delegate = self
        view.messageTable.dataSource = self
        
        let messageNib = UINib(nibName: "MessageCell", bundle: nil)
        view.messageTable.register(messageNib, forCellReuseIdentifier: "MessageCellid")

        

        self.view.addSubview(view)
        // Do any additional setup after loading the view.
 
    }
}


extension MenuController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UserAvatarCell", for: indexPath) as? UserAvatarCell {
            //cell.avatar.image = UIImage(named: "mail")
            cell.userName.text = "Nguyễn Tuấn"
            return cell
        }
        return UICollectionViewCell()
        
        
    }
    
    
}

extension MenuController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCellid", for: indexPath) as! MessageCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let controller = UIAlertController.init(title: "", message: "Bạn muốn xoá tin nhắn này?", preferredStyle: .alert)
        controller.addAction(UIAlertAction(title: "OK",style: .default,handler: { [self] (_) in
            testArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }))
    
        let Cancel = UIAlertController.init(title: "", message: "", preferredStyle: .alert)
        controller.addAction(UIAlertAction(title: "Không!",style: .cancel,handler: { (_) in
        
    }))
        self.present(controller, animated: true, completion: nil)
        self.present(Cancel, animated: true, completion: nil)
    }
    
}
