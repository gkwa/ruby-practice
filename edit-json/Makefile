state := Local\ State

test: local_state
	cat local_state | python -mjson.tool >local_state.pretty.before-edit
	ruby edit_state.rb
	cat local_state | python -mjson.tool >local_state.pretty.after-edit
	-diff -uw local_state.pretty.before-edit local_state.pretty.after-edit

$(state):
	cp original/$(state) .

local_state: $(state)
	cat $(state) | python -mjson.tool >$@

show_goal_diff:
	cat original/$(state) | python -mjson.tool >tmp.1
	cat goal/$(state) | python -mjson.tool >tmp.2
	-diff -uw tmp.1 tmp.2 >tmp.3

pretty: pretty_original
pretty: pretty_goal

pretty_original:
	cat original/$(state) | python -mjson.tool >$(state)_original.pretty
pretty_goal:
	cat goal/$(state) | python -mjson.tool >$(state)_goal.pretty

clean:
	rm -f *.pretty*
	rm -f local_state
	rm -f $(state)
	rm -f tmp.3
	rm -f tmp.2
	rm -f tmp.1
