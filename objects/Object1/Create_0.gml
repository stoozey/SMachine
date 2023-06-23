state = new SState()
	.add("walking", function(_state) {
		_state.
			add_event(ev_step, ev_step_normal, function() {
				var _xAxis = (keyboard_check(vk_right) - keyboard_check(vk_left));
				var _yAxis = (keyboard_check(vk_down) - keyboard_check(vk_up));
				x += _xAxis;
				y += _yAxis;
			});
	})
	.set_state("walking");