function paginate_text(_text, _max_width, _max_height) {
    var words = string_split(_text, " ");
    var pages = [];
    
    var current_page = "";
    var test_line = "";
    var line_height = string_height("A");
    var current_height = 0;
    
    for (var i = 0; i < array_length(words); i++) {
        var word = words[i];
        
        var test = test_line + word + " ";
        
        if (string_width(test) > _max_width) {
            // nueva línea
            current_page += test_line + "\n";
            current_height += line_height;
            test_line = word + " ";
            
            // si ya no cabe más verticalmente
            if (current_height + line_height > _max_height) {
                array_push(pages, current_page);
                
                current_page = "";
                current_height = 0;
            }
            
        } else {
            test_line = test;
            
        }
    }
    
    current_page += test_line;
    array_push(pages, current_page);
    
    return pages;
}
