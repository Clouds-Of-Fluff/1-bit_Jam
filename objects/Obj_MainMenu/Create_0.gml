// Init
selection_locked = false;

// Camera
cam = view_camera[0];
cw = camera_get_view_width(cam);
ch = camera_get_view_height(cam);
X = cw/2;
Y = ch/2;

// Buttons create
var play = instance_create_layer(X, Y, self.layer, Obj_ButtonMenu);
play.text = "Play"

var settings = instance_create_layer(X, Y+48, self.layer, Obj_ButtonMenu);
settings.text = "Settings"

var about = instance_create_layer(X, Y+96, self.layer, Obj_ButtonMenu);
about.text = "About"

var out = instance_create_layer(X, Y+144, self.layer, Obj_ButtonMenu);
out.text = "Exit"
