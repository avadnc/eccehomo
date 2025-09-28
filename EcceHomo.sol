// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

/**
 * @title Ecce Hommo Token
 * @dev Inspirado en la restauración de Cecilia Giménez
 * Un token destinado al fracaso épico pero divertido
 * Como la pintura: empezó con buenas intenciones...
 */
contract EcceHommo is ERC20, ERC20Burnable {
    
    // Supply absurdamente grande, como el fail épico de la restauración
    uint256 private constant INITIAL_SUPPLY = 2012080800000 * 10**18; // ~2 billones de tokens
    
    // La fecha de la restauración para la posteridad
    uint256 public constant RESTORATION_DATE = 1344556800; // 10 agosto 2012
    
    // Easter egg: función que siempre retorna true (como "sí, quedó bien la restauración")
    mapping(address => bool) public hasSeenTheRestoration;
    
    constructor() ERC20("Ecce Hommo", "EccHo") {
        // Mintea todo el supply al deployer (como Cecilia teniendo toda la responsabilidad)
        _mint(msg.sender, INITIAL_SUPPLY);
        
        // El creador ya vio la "restauración"
        hasSeenTheRestoration[msg.sender] = true;
    }
    
    /**
     * @dev Transfer function que marca a quien recibe tokens como "testigo de la restauración"
     * Porque una vez que ves EccHo, no lo puedes olvidar
     */
    function transfer(address to, uint256 amount) public override returns (bool) {
        bool success = super.transfer(to, amount);
        if (success && amount > 0) {
            hasSeenTheRestoration[to] = true;
        }
        return success;
    }
    
    /**
     * @dev Función para "intentar restaurar" - quema tokens aleatoriamente
     * Como intentar arreglar algo y empeorarlo
     */
    function attemptRestoration(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "No tienes suficientes tokens para 'restaurar'");
        
        // Quema los tokens (como arruinar la pintura original)
        _burn(msg.sender, amount);
        
        // Marca que el usuario "intentó restaurar"
        hasSeenTheRestoration[msg.sender] = true;
    }
    
    /**
     * @dev Función para verificar si alguien ha sido testigo del desastre
     */
    function isWitnessOfDisaster(address account) public view returns (bool) {
        return hasSeenTheRestoration[account];
    }
    
    /**
     * @dev Función que retorna información melancólica sobre el token
     */
    function getRestorationInfo() public view returns (
        string memory originalPainting,
        string memory restorerName,
        uint256 restorationDate,
        string memory result,
        uint256 currentSupply
    ) {
        return (
            "Ecce Homo by Elias Garcia Martinez",
            "Cecilia Gimenez",
            RESTORATION_DATE,
            "Epic fail but legendary meme",
            totalSupply()
        );
    }
    
    /**
     * @dev Override para que transferFrom también marque testigos
     */
    function transferFrom(address from, address to, uint256 amount) public override returns (bool) {
        bool success = super.transferFrom(from, to, amount);
        if (success && amount > 0) {
            hasSeenTheRestoration[to] = true;
        }
        return success;
    }
    
    /**
     * @dev Función de "arrepentimiento" - permite quemar todos los tokens de una vez
     * Para cuando te das cuenta de lo que has hecho
     */
    function totalRepentance() public {
        uint256 balance = balanceOf(msg.sender);
        if (balance > 0) {
            _burn(msg.sender, balance);
        }
    }
}