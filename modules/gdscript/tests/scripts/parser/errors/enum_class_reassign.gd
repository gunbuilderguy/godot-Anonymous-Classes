enum class Hue:
	RED
	GREEN


func test():
	# Can't reassign an enum value.
	Hue.RED = Hue.GREEN
	print(Hue.RED)
