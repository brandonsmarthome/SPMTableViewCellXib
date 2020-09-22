//
//  ViewController.swift
//  SPMTableViewCellXib
//
//  Created by Brandon Hostetter on 9/21/20.
//

import UIKit

#if SWIFT_PACKAGE
let frameworkBundle = Bundle.module
#else
let frameworkBundle = Bundle(for: ViewController.self)
#endif

public class TestXibLoading {
    public static func beginViewDisplay(_ presenter: UIViewController) {
        let vc = ViewController(nibName: "View", bundle: frameworkBundle)
        presenter.present(vc, animated: true, completion: nil)
    }
}

public class ViewController: UIViewController {
    @IBOutlet public weak var tableView: UITableView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib(nibName: "XibTestTableViewCell", bundle: frameworkBundle), forCellReuseIdentifier: "XibTestCell")
        self.tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "XibTestCell", for: indexPath)
    }
}
