extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Window.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Signals.window_popup == true:
		$Window.show()


func _on_window_close_requested():
	Signals.window_popup = false
	$Window.hide()
