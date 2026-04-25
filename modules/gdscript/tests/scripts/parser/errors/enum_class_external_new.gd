enum class Stage:
	FIRST


func test():
	# Cannot construct an enum class directly; only declared values are allowed.
	var bogus = Stage.new()
	print(bogus)
