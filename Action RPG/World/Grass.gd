extends Node2D

const GrassEffect = preload("res://Effects/GrassEffect.tscn")

func create_grass_effect():
	var grassEffect = GrassEffect.instance()#Instanciando a cena
	#Para que eu possa inserir a instancia da cena dentro do mundo
	get_parent().add_child(grassEffect)#Adiciona o efeito.
	#para colocar o efeito somente onde tem grass façamos isso.
	grassEffect.global_position = global_position
	
func dica():
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
	pass

func _on_Hurtbox_area_entered(_area):
	create_grass_effect()
	queue_free()#Destroi o sprite assim que acaba a ação.
