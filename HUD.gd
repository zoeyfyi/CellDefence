extends CanvasLayer

signal nucleaus_store_heal

func _ready():
	$NucleausHUD.visible = false

func set_protein_score(score):
	$ProteinScore.text = "Protein Points: " + str(score)

func open_nucleaus_store():
	$NucleausHUD.visible = true

func in_menu():
	return $NucleausHUD.visible

func _on_HealButton_pressed():
	emit_signal("nucleaus_store_heal")


func _on_Player_inventory_update(inventory):
	var inventory_string : String = "Inventory:"
	for i in range(inventory.size()):
		inventory_string += "\n" + inventory[i]
	$InventoryLabel.text = inventory_string
