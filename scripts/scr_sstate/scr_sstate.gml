function SState() constructor
{
	static add = function(_id, _initializer = __sstate_func_empty)
	{
		var _state = new __sstate_class_state(_id, __owner);
		__states[$ _id] = _state;
		
		_initializer(_state);
		return self;
	}
	
	static set_state = function(_id)
	{
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