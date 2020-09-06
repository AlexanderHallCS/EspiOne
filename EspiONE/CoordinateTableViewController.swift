//
//  CoordinateTableViewController.swift
//  EspiONE
//
//  Created by Alexander Hall on 9/6/20.
//  Copyright © 2020 Hall Inc. All rights reserved.
//

import UIKit

class CoordinateTableViewController: UITableViewController {

    // model:
    var countries = ["Australia","Brazil","Canada","China","Egypt","Finland","France","Germany","Iceland","India","Iran","Israel","Italy","Jamaica","Japan","Mexico","New Zealand","Panama","Philippines","Qatar","Russia","South Korea","Switzerland","South Africa","United Kingdom","Venezuela","Zimbabwe"]
    
    var coordinatePairs = ["(-35.307222, 149.117222)","(-23.629242, -46.697516)","(45.427858, -75.695869)","(39.953, 116.459)","(30.041292, 31.233411)","(64.143720, -21.937690)","(48.867886, 2.320733)","(52.5157, 13.3785)","(64.143720, -21.937690)","(28.5975, 77.1881)","(35.708, 51.424)","(31.7477, 35.2246)","(41.9066, 12.4908)","(18.018548, -76.764822)","(35.6688, 139.7433)","(19.428, -99.166)","(-41.272878, 174.779008)","(8.999421, -79.561952)","(14.5772, 120.9777)","(25.303636, 51.471234)","(55.755556, 37.583056)","(37.573138, 126.977867)","(46.943433, 7.438305)","(-25.746034, 28.223922)","(51.4826, 0.1322)","(10.472736, -66.871479)","(-17.822858, 31.043869)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)

        cell.textLabel?.text = countries[indexPath.row]
        cell.detailTextLabel?.text = coordinatePairs[indexPath.row]

        return cell
    }
    
    @IBAction func dismissCoordinateTableVC(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
