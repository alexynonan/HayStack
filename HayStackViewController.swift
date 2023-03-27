//
//  HayStackViewController.swift
//  prueba
//
//  Created by Alexander Ynoñan H. on 26/03/23.
//

import UIKit

class HayStackViewController: UIViewController {

    private var arrayNums = [1, 2, 8, 4, 7, 3, 9, 5, 6, 11]

    override func viewDidLoad() {
        super.viewDidLoad()
        sortListEvenToOdd(&arrayNums)
        print(arrayNums)
        // Do any additional setup after loading the view.
    }

    func sortListEvenToOdd(_ array: inout [Int]) {
        var index = 0
        var oddIdx = array.count - 1

        while index < oddIdx {
            if array[index] % 2 == 0 {
                ///PAR
                index += 1
            } else {
                ///IMPAR
                array.swapAt(index, oddIdx)
                oddIdx -= 1
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
