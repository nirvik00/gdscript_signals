extends Node2D

@onready var label_2: Label = $Label2
@onready var timer: Timer = $Timer

var count=0

func _ready() -> void:
	SignalManager.from_main.connect(signal_from_main)

func signal_from_main():
	label_2.text = "signal received from main"
	timer.start()


func _on_timer_timeout() -> void:
	timer.start()
	label_2.text = "-"


func _on_button_pressed() -> void:
	count+=1
	SignalManager.from_receiver.emit(count)
	
