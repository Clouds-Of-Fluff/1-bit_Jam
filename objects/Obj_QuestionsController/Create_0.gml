// Initialization
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

// Select question
current_question = Scr_Questions(index);

#endregion

// Text
full_text = current_question[0];
visible_text = "";
text_pos = 0;
text_speed = 2; // frames per character
text_timer = 0;

// Current State
state = QSTATE.WRITING;

// Buttons
value1 = current_question[1];
value2 = current_question[2];
text1 = current_question[3];
text2 = current_question[4];
buttons_created = false;

selection_locked = false; // Blocks click in another button

// Misc var
cam = view_camera[0];
cw = camera_get_view_width(cam);
ch = camera_get_view_height(cam);
X1 = 0;
X2 = cw;
Y1 = ch-96;
Y2 = ch;
