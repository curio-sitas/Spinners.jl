module Spinners

export spinner

function spinner(
	t::Union{Task, Nothing}=nothing,
	string::Union{String, Nothing}=nothing,
	time::Union{AbstractFloat, Nothing}=nothing;
	mode::Union{Symbol, Nothing}=nothing,
	before::Union{String, Nothing}=nothing,
	after::Union{String, Nothing}=nothing,
	)

	# Assign missing arguments
	if isnothing(t)
		t = @async sleep(3)
	end
	if isnothing(string)
		string = "\\|/-"
	end
	if isnothing(time)
		time = 0.25
	end
	if isnothing(mode)
		mode = :spin
	end
	if isnothing(before)
		before = ""
	else
		print(before)
	end

	l = length(string)

	print(" ") # initial blank (deleted within loop)

	if mode == :spin
		# Spinner
		i = 0
		print(" ")
		while !istaskdone(t)
			print("\b", string[ ( i % length(string)  ) + 1 ])
			sleep(time)
			i = i + 1
		end
		if isnothing(after)
			after = string[1];
		end
	elseif mode == :random || mode == :haphazard
		if l > 1
			# Spinner
			i = rand(1:l)
			while !istaskdone(t)
				print("\b", string[ i ])
				sleep(time)
				i = rand(filter((x) -> x!= i, 1:l)) # Don't allow repeats
			end
			if isnothing(after)
				after = string[1];
			end
		else
			print(string[1])
		end
	elseif mode == :unfurl
		# Spinner
		# prime the loop
		print("\b", string[1])
		i = 1
		while !istaskdone(t)
			m = ( i % l + 1)
			if m == 1
				sleep(time*3)
				print("\b" ^ l * " " ^ l * "\b" ^ l)
			end
			print(string[ m  ])
			sleep(time)
			i = i + 1
		end
		if isnothing(after)
			after = string;
		end
	end

	# Print after string
	
	println("\b" ^ ( l + length(before)), after)
end

end # module Spinners
