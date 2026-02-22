/// Init
selection_locked = false;

/// Camera
cam = view_camera[0];
cw = camera_get_view_width(cam);
ch = camera_get_view_height(cam);

/// Buttons
X = cw/2;
Y = ch/2;
hover_button = noone;
last_hover_button = noone;

// Play
play = instance_create_layer(X, Y, self.layer, Obj_ButtonMenu);
play.text = "Play"

// Settings
settings = instance_create_layer(X, Y+48, self.layer, Obj_ButtonMenu);
settings.text = "Settings"

// Credits
credits = instance_create_layer(X, Y+96, self.layer, Obj_ButtonMenu);
credits.text = "Credits"

// Exit
out = instance_create_layer(X, Y+144, self.layer, Obj_ButtonMenu);
out.text = "Exit"
