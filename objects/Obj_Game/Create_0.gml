// Init text
#region INDEX
var room_name = room_get_name(room);
var len = string_length(room_name);
var number_string = "";

// travel from the end backwards
for (var i = len; i > 0; i--) {
    var c = string_char_at(room_name, i);
    
    if (ord(c) >= ord("0") && ord(c) <= ord("9")) {
        number_string = c + number_string;
    } else {
        break; // Stop if there is no more numbers
    }
}

if (number_string != "") {
    index = real(number_string);
} else {
    index = 0; // fallback
}

// Select text
current_text = Scr_Texts(index);

#endregion

// Misc var
cam = view_camera[0];
cw = camera_get_view_width(cam);
ch = camera_get_view_height(cam);
X1 = 0;
X2 = cw;
Y1 = ch - 96;
Y2 = ch;
others = false;

// Pages
pages = paginate_text(current_text, 500, 72);
page_index = 0;

// Text
full_text = pages[page_index];
visible_text = "";
text_speed = 2;
text_pos = 0;
text_timer = 0;

// Current State
state = TSTATE.WRITING;
mouse_released = true;
