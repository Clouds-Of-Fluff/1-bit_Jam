function Scr_Questions(_index) {
    // "1" it´s good, "0" it´s bad
    var quests = [
        ["Are you good?", 0, 1, "No", "Yes"],
        ["(another question)", 0, 1, "No"]
        
    ];
    
    if (_index >= 0 && _index < array_length(quests)) {
        return quests[_index];
        
    }
    
    return undefined;
    
}
