// Define the TreasureChest type with a password and generic treasure
pub type TreasureChest(treasure) {
  TreasureChest(password: String, treasure: treasure)
}

// Define the UnlockResult type with two variants
pub type UnlockResult(treasure) {
  Unlocked(treasure: treasure)
  WrongPassword
}

// Define the unlock function to check the password and return the appropriate result
pub fn get_treasure(chest: TreasureChest(treasure), password_attempt: String) -> UnlockResult(treasure) {
  case password_attempt == chest.password {
    True -> Unlocked(chest.treasure)
    False -> WrongPassword
  }
}
