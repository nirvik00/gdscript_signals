extends Node2D

@onready var label_2: Label = $Label2

func _ready() -> void:
	SignalManager.from_receiver.connect(signal_from_receiver)

func signal_from_receiver(val:int):
	label_2.text = str(val)


func _on_button_pressed() -> void:
	SignalManager.from_main.emit()
