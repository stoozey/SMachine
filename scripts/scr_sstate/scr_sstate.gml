function SMachine() constructor
{
	static add = function(_id, _initializer = __smachine_func_empty)
	{
		var _state = new __smachine_class_state(_id, __owner);
		__states[$ _id] = _state;
		
		_initializer(_state);
		return self;
	}
	
	static set_state = function(_id)
	{
		var _lastState = __state;
		if (_lastState != -1)
		{
			_lastState.__exit();
			
		}
		
		__state = __states[$ _id];
		return self;
	}
	
	static get_state = function()
	{
		return __state;
	}
	
	static run = function(_eventType = undefined, _eventNumber = undefined)
	{
		__state.run((_eventType ?? event_type), (_eventNumber ?? event_number));
	}
	
	__state = -1;
	__owner = other;
	__states = { };
}