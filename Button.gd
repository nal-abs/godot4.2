extends Button

var clickCount = 0
var data = [
  {
	'name': 'capsicum',
	'x': 0,
	'y': 144,
	'width': 144,
	'height': 144
  },
  { 'name': 'library','x': 0, 'y': 0, 'width': 288, 'height': 144 },
  {
	'name': 'pineApple',
	'x': 144,
	'y': 144,
	'width': 144,
	'height': 144
  },
  {
	'name': 'sandwichSlice',
	'x': 288,
	'y': 0,
	'width': 144,
	'height': 144
  },
  {
	'name': 'watermelonSlice',
	'x': 288,
	'y': 144,
	'width': 144,
	'height': 144
  }
]

func _ready():
	createSprite('capsicum')

	
func _process(delta):
	pass
	$"../Label".text = str(State.seed.clickCount)
	
func _on_pressed(value):
		clickCount = clickCount + 1
		print(clickCount);
		State.seed.clickCount = State.seed.clickCount + 1
		print(State.seed.clickCount)
		
func createSprite(name):
	data.map(func(ele):
		if name == ele.name:
			$"../Sprite2D".region_rect = Rect2(ele.x, ele.y, ele.width, ele.height));
	
