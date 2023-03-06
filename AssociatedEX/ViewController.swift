//
//  ViewController.swift
//  AssociatedEX
//
//  Created by SHIRAISHI HIROYUKI on 2023/03/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    var coustom: CustomArray!
    override func viewDidLoad() {
        super.viewDidLoad()
        coustom = CustomArray()
        for index in 0...10 {
            coustom.append(item: "item_index: \(index)")
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coustom.colllection.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = coustom.colllection[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = item
        return cell
    }
}

