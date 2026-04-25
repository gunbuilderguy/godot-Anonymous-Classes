enum class Hue:
	RED(255, 0, 0)
	GREEN(0, 255, 0)
	BLUE(0, 0, 255)
	MYSTERY(0, 0, 0):
		func describe() -> String:
			return "???"

	var r: int
	var g: int
	var b: int

	func _init(p_r: int, p_g: int, p_b: int):
		r = p_r
		g = p_g
		b = p_b

	func describe() -> String:
		return "rgb(%d, %d, %d)" % [r, g, b]

	# Users can define their own name()/index() one-liners from the
	# auto-generated `values` and `names` arrays.
	func index() -> int:
		return Hue.values.find(self)

	func name() -> String:
		return Hue.names[index()]


func test():
	print(Hue.RED.describe())
	print(Hue.MYSTERY.describe())

	# Iterate all values.
	for h in Hue.values:
		print(h.name(), " -> ", h.describe())

	# Direct name/index access.
	print(Hue.BLUE.index())
	print(Hue.BLUE.name())

	# Default _to_string() formats as `EnumName.VALUE`.
	print(Hue.RED)
	print("got: %s" % Hue.MYSTERY)

	# Identity equality across references.
	print(Hue.GREEN == Hue.GREEN)
	print(Hue.RED == Hue.GREEN)

	# Reverse lookup: name -> value.
	print(Hue.valueOf("BLUE") == Hue.BLUE)
	print(Hue.valueOf("not_a_value"))
