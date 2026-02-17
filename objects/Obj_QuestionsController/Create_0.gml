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