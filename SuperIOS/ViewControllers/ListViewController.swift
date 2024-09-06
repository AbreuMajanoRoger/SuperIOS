//
//  ViewController.swift
//  SuperIOS
//
//  Created by Mañanas on 4/9/24.
//

import UIKit



class ListViewController: UIViewController, UITableViewDataSource {
    
    // conexio  de la tabla
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet var viewFather: UIView!
    
    var superHeroList: [SuperHero] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       viewFather = GradientView (frame: CGRect (x: 0, y: 0, width: 220, height: 50))
        
        
        
        tableView.dataSource = self
        
        // buscador? por defecto esta SuperHeroProvider.findSuperHeroesByName("buscar")
        SuperHeroProvider.findSuperHeroesByName("a", withResult: { results in
            self.superHeroList = results
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        })
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHeroList.count
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SuperHeroViewCell
        
        let superHero = superHeroList[indexPath.row]
        
        cell.render(superHero: superHero)
        
        return cell
    }
    
    //funcion para enviar los parametros de la api a la pagina de detalles
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if (segue.identifier == "showDetail") {
                let viewController = segue.destination as! DetailViewController
                
                let indexPath = tableView.indexPathForSelectedRow!
                
                viewController.superHero = superHeroList[indexPath.row]
                
                tableView.deselectRow(at: indexPath, animated: false)
            }
        }
    // END LINES
}

