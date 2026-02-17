// Initialization
index = 0;
current_question = Scr_Questions(index);

// Text
full_text = current_question[0];
visible_text = "";
text_pos = 0;
text_speed = 2; // frames por letra
text_timer = 0;

// Current State
state = QSTATE.WRITING;
// writing = writing
// waiting = waiting buttons
// transition = waiting next question

// Buttons
bad_value = current_question[1];
good_value = current_question[2];
bad_text = current_question[3];
good_text = current_question[4];
buttons_created = false;

// Misc var
cam = view_camera[0];
cw = camera_get_view_width(cam);
ch = camera_get_view_height(cam);
X1 = 0;
X2 = cw;
Y1 = ch-96;
Y2 = ch;