module Spinners

using IterTools: nth
using Unicode: graphemes

export spinner

function get_element(s::Vector, i::Int)
	s[i]
end
function get_element(s::String, i::Int)
	u = graphemes(s)
	return nth(u, i)
end

function spinner(
	t::Union{Task, Nothing}=nothing,
	raw_string::Union{String, Nothing}=nothing,
	time::Union{AbstractFloat, Nothing}=nothing;
	mode::Union{Symbol, Nothing}=nothing,
	before::Union{String, Nothing}=nothing,
	after::Union{String, Nothing}=nothing,
	cleanup::Union{Bool, Nothing}=nothing,
	)

	# Assign missing arguments
	if isnothing(t)
		t = @async sleep(3)
	end
	if isnothing(raw_string)
		raw_string = "\\|/-"
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
	if isnothing(cleanup)
		cleanup = true
	end

v_string = collect(raw_string)

	l = length(v_string)

	STR_TO_DELETE = " "
	print(STR_TO_DELETE) # initial blank (deleted within loop)

	if mode == :spin
		# Spinner
		i = 0
		while !istaskdone(t)
			next_char = get_element(v_string, ( i % l)  + 1 )
			print("\b"^sizeof(STR_TO_DELETE), next_char)
			sleep(time)
			STR_TO_DELETE = next_char
			i = i + 1
		end
		if isnothing(after)
			after = get_element(v_string, 1);
		end
	elseif mode == :random || mode == :haphazard || mode == :rand
		if l > 1
			# Spinner
			i = rand(1:l)
			while !istaskdone(t)
				print("\b", get_element(v_string, i))
				sleep(time)
				i = rand(filter((x) -> x!= i, 1:l)) # Don't allow repeats
			end
			if isnothing(after)
				after = get_element(v_string, 1);
			end
		else
			print(get_element(v_string, 1))
		end
	elseif mode == :unfurl
		# Spinner
		# prime the loop
		print("\b", get_element(v_string, 1))
		sleep(time)
		i = 1
		while !istaskdone(t) || i % l + 1 != 1 # Print the remainder of the v_string at the end
			m = ( i % l + 1)
			if m == 1
				sleep(time*3)
				print("\b" ^ l * " " ^ l * "\b" ^ l)
			end
			print(get_element(v_string, m))
			sleep(time)
			i = i + 1
		end
		if isnothing(after)
			after = v_string;
		end
	else
		#error
	end

	# Print after string
	
	if cleanup == true
		println("\b" ^ ( sizeof(string) + sizeof(before)), after)
	else
		println("\n",after)
	end
end

end # module Spinners
