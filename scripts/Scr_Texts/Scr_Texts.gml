function Scr_Texts(_index){
    var text = [
        "Congratulations on your promotion. You earned it, but now you have to make sure you keep it. " + 
        "It isn't really that hard as long as you make the right decision. The previous CEO failed and almost made this company bankrupt. " +
        "We hope for the best from you. Anyways, after that CEO's poor choices, we are very short on funding. " + 
        "Two powerful nations have decided to fund us. Listen to their offers and choose one correctly. They will meet you in the office.                                                                     " + 
        "Option 1 - The United States offers a loan: 5% of each barrel's profit goes to them until you repay three times the loan amount. " + 
        "Option 2 - Germany offers a loan: they'll take 3% equity per barrel until theyve made three times what they lent you.",
        
        "Well, now that we've got a budget, we need to hire new workers. Gotta be careful with it workers are the heart of your company. We have two options: " + 
        "Option 1 - Cheap labor is available. Low wages, overworked, underpaid... but they'll churn out barrels like machines. " + 
        "Accidents happen, sure, and morale is low, but every mistake is just a cost of doing business. " + 
        "Option 2 - Skilled and happy workers are available. You'll pay them more than necessary, coddle their morale, and reward them fairly. Production is steady and accidents are rare.",
        
        "[Few days later] It appears some of your workers have died from exhaustion. Well, it happens. At least we didn't lose a profit. " + 
        "Now you can't let this news get out, else your reputation is wasted. Perhaps there is a way to profit from it. " + 
        "Option 1 - Sell to Medical Labs: Some contacts offer to buy the bodies for research and medical purposes. It's discreet, and the money is decent. " + 
        "Option 2 - Compost and Animal Feed: Another offer comes: the bodies could be turned into compost or animal feed. Less profit than medical labs, but still usable.",
        
        "Well... whispers are spreading. Families are asking questions. Journalists are sniffing around. " + 
        "A scandal could destroy your stock value overnight. But every crisis... is an opportunity for a profit. " + 
        "Option 1 - Buy silence. A few well-placed payments and the headlines change. ''Unfortunate Incident'' becomes ''Isolated Event''. " + 
        "Option 2 - Announce a workers' safety initiative. Donate a fraction of profits to the families. The public approves... but investors worry about increased costs.",
        
        "[One year later] MR. CEO, the Regulation Bill will pass within six months. Projections show a 13% rise in operating costs across the sector. " + 
        "If you do nothing, your costs go up and your growth slows. But you still have time to react... Now for the final decision. " + 
        "Option 1 - You can either invest $150000 immediately into infrastructure and automation. " + 
        "Option 2 - Allocate $95000 toward policy influence and strategic delay."
        
    ];
    
    if (_index >= 0 && _index < array_length(text)) {
        return text[_index];
        
    }
    
    return undefined;
    
}