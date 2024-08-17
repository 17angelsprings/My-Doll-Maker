extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)


func _input(event):
	if Input.is_key_pressed(KEY_UP):
		scroll_up()
	if Input.is_key_pressed(KEY_DOWN):
		scroll_down()

func _on_button_pressed():
	Signals.window_popup = true

func _on_up_arrow_pressed():
	scroll_up()

func _on_down_arrow_pressed():
	scroll_down()
	
func scroll_up():
	$ScrollContainer.scroll_vertical = $ScrollContainer.scroll_vertical - 50
	
func scroll_down():
	$ScrollContainer.scroll_vertical = $ScrollContainer.scroll_vertical + 50
