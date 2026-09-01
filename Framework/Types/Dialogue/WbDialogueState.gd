class_name WbDialogueState extends Resource

## The "adress" of this state. Is used by dialogue answers to adress states.
@export var state_id: int

## What the NPC says 
@export var prompt: WbText

## What you can say. Will get you to another state
@export var answers: Array[WbDialogueAnswer]
