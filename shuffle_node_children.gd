# shuffle node children (eg. children of HBoxContainer)

func shuffle_node_children(node):
	var children = node.get_children()
	children.shuffle()
	for c in children:
		node.move_child(c, children.find(c))
    
shuffle_node_children(get_node(...))
