function Scr_Questions(_index) {
    // "1" it´s good, "0" it´s bad
    var quests = [
        ["Who\'s offer are you taking?", 1, 0, "USA", "Germany"],
        ["So, what\'s it gonna be?", 0, 1, "Hire expensive labor", "Hire cheap labor"],
		["What will you do? Medicine or Compost?", 0, 1, "Sell to medical labs", "Compost and feed animals"],
		["Silence or donation?", 1, 0, "Buy silence", "Workers safety iniciative"],
		["150 000 to infrastructure or 95 000 for press?", 0, 1, "150 000", "95 000"]
        
    ];
    
    if (_index >= 0 && _index < array_length(quests)) {
        return quests[_index];
        
    }
    
    return undefined;
    
}
