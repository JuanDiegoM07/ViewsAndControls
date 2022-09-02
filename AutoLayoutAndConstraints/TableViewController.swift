//
//  TableViewController.swift
//  AutoLayoutAndConstraints
//
//  Created by Jorge Luis Rivera Ladino on 2/09/22.
//

import UIKit

class TableViewController: UIPageViewController {
    
    // MARK: - Private Properties
    
    //Declaracion de un array privada vacia de tipo UIViewController
    private var myControllers: [UIViewController] = []
    
    // MARK: - Life cicle view controller
    
    override func viewDidLoad() {
        super.viewDidLoad()
      // Instancia un view de un storyboard
        let myPinkVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vcPink")
        let myBlueVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vcBlue")
        // se agregan las dos vistas al arreglo
        myControllers.append(myPinkVC)
        myControllers.append(myBlueVC)
        
        // Se agrega primer controlador al PageControll
        setViewControllers([myPinkVC], direction: .forward, animated: true , completion: nil)
        // se indica que este controllador (TableViewController) va a ser el encargado de pasar los datos (viewcontrollers) al "UIPageViewController"
        //el "UIPageViewController" le esta delegando al "TableViewController" la funcionalidad de pasarle los datos (viewcontrollers)
        dataSource = self
    }
    
}

// MARK: - UIPageViewControllerDataSource
extension  TableViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return setupController(viewController)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return setupController(viewController)
    }
    
    private func setupController(_ viewController: UIViewController) -> UIViewController? {
        let index = myControllers.firstIndex(of: viewController)
        if index == 1 {
            return myControllers.first
        }
        return myControllers.last
    }
    
}
