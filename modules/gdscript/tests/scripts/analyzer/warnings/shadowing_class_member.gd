class Base:
	var speed: float = 5.0
	func describe() -> String:
		return "speed=" + str(speed)


class FastChild extends Base:
	var speed: float = 10.0


func test():
	var b = Base.new()
	var f = FastChild.new()
	print(b.describe())
	print(f.describe())
