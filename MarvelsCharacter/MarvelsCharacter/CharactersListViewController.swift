//
import UIKit

class ViewController: UIViewController {
    var characters: [Character] = [] // Array para almacenar datos de personajes
    @IBOutlet weak var collectionView: UICollectionView! // Conexión con la Collection View en el Storyboard

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    class CharacterDetailViewController: UIViewController {
        var selectedCharacter: Character?
        func showCharacterDetails(character: Character) {
            // Lógica para mostrar los detalles del personaje
        
            let characterDetailVC = CharacterDetailViewController()
            characterDetailVC.selectedCharacter = character
            navigationController?.pushViewController(characterDetailVC, animated: true)
    }
}

   extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return characters.count
    
    }
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            class CharacterCell: UICollectionViewCell {
                @IBOutlet weak var characterImageView: UIImageView!
                // Otros elementos de tu celda y lógica relacionada
            }
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CharacterCell", for: indexPath) as! CharacterCell
            let character = characters[indexPath.row]
            cell.characterImageView.image = character.image
            return cell
        }
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedCharacter = characters[indexPath.row]
        showCharacterDetails(character: selectedCharacter)
    }
}

    

