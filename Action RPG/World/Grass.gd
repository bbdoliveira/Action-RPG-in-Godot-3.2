extends Node2D


func _process(_delta):
	if Input.is_action_just_pressed("attack"):
		var GrassEffect = load("res://Effects/GrassEffect.tscn")
		var grassEffect = GrassEffect.instance()#Instanciando a cena
		#vai pegar cena principal
		var world = get_tree().current_scene
		#Para que eu possa inserir a instancia da cena dentro do mundo
		world.add_child(grassEffect)#Adiciona o efeito.
		#para colocar o efeito somente onde tem grass façamos isso.
		grassEffect.global_position = global_position
		queue_free() #Destroi o sprite assim que acaba a ação.
		
		#Para instanciar cenas dentro do código é muito importante
		#por isso é o core de se usar o Godot
		#1 - Carrega a cena dentro de uma variavel.
			#var GrassEffect = load("res://Effects/GrassEffect.tscn")
		#2 - Faz a intancia da cena dentro de outra váriavel
			#var grassEffect = GrassEffect.instance()
		#3 - Pega a raiz do mundo para poder adicionar coisas nela.
			# var world = get_tree().current_scene
		#4 - Adiciona a cena como child do mundo.
			#world.add_child(grassEffect)
		#5 - Seta a posição do efeito no mundo.
			#grassEffect.global_position = global_position
