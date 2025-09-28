# EcceHommo Token (EccHo)

## Overview

EcceHommo is a memecoin inspired by the infamous restoration attempt of the "Ecce Homo" fresco by Cecilia Giménez in 2012. This token embraces the philosophy of good intentions leading to epic failure, creating something that becomes legendary for all the wrong reasons.

## Token Details

- **Name:** Ecce Hommo
- **Symbol:** EccHo
- **Total Supply:** 2,012,080,800,000 tokens (intentionally absurd)
- **Decimals:** 18
- **Network:** Polygon
- **Standard:** ERC-20 with additional meme functions

## The Story

On August 10, 2012, 80-year-old Cecilia Giménez attempted to restore a 19th-century fresco of Jesus Christ in a Spanish church. Her well-intentioned effort resulted in what many called a "disfiguration" but ultimately became one of the internet's most beloved memes and a symbol of endearing failure.

This token captures that spirit: something designed to fail spectacularly but become culturally significant in the process.

## Special Features

### Core Meme Functions

- **attemptRestoration(amount)** - "Restore" by burning tokens (making things worse)
- **totalRepentance()** - Burn all your tokens when you realize what you've done
- **isWitnessOfDisaster(address)** - Check if someone has seen the restoration
- **getRestorationInfo()** - Returns melancholic information about the original painting

### Witness System

Anyone who receives EccHo tokens automatically becomes a "witness to the restoration" - because once you see it, you can't unsee it.

### Historical Constants

- **RESTORATION_DATE:** Unix timestamp of August 10, 2012
- **INITIAL_SUPPLY:** Based on the year 2012 + lots of zeros for absurdity

## Contract Functions

### Standard ERC-20
- `transfer(to, amount)` - Also marks recipient as witness
- `transferFrom(from, to, amount)` - Also marks recipient as witness
- `approve(spender, amount)`
- `allowance(owner, spender)`
- `balanceOf(account)`
- `totalSupply()`

### ERC-20 Burnable
- `burn(amount)` - Burn your tokens
- `burnFrom(account, amount)` - Burn someone else's tokens (with approval)

### Meme Functions
- `attemptRestoration(uint256 amount)` - Burn tokens while becoming a witness
- `totalRepentance()` - Burn all your tokens in shame
- `isWitnessOfDisaster(address account)` - Check witness status
- `getRestorationInfo()` - Get restoration metadata
- `hasSeenTheRestoration(address)` - Public mapping of witnesses

## Philosophy

This token embodies several key principles:

1. **Embrace Failure** - Sometimes the worst outcomes create the best stories
2. **Good Intentions** - Started with hopes of improvement
3. **Cultural Impact** - Failure can become more significant than success
4. **Humility** - Don't take yourself too seriously
5. **Permanence** - Blockchain preserves all attempts, good and bad

## Deployment

The contract is deployed on Polygon for minimal transaction costs, keeping with the philosophy that a meme shouldn't be expensive to participate in.

## Risk Disclosure

This is a memecoin created for educational and entertainment purposes. Like Cecilia's restoration, it's designed to be a beautiful disaster. Do not expect financial returns - expect cultural significance.

The tokenomics are intentionally absurd:
- Massive supply
- No utility beyond the meme
- Designed for inevitable market failure
- Educational value about blockchain development

## Contributing

Feel free to fork, improve, or attempt your own "restoration" of this code. Remember: it's not about making it better, it's about making it yours.

## License

MIT License - Feel free to attempt your own restoration

## Acknowledgments

- Cecilia Giménez - For showing us that failure can be beautiful
- The internet - For making a meme immortal
- OpenZeppelin - For secure smart contract foundations
- The blockchain - For preserving digital art disasters forever

---

*"A veces es mejor dejar las cosas como están" - Sometimes it's better to leave things as they are*