function __sstate_class_state(_id, _owner) constructor
{
	static add_event = function(_eventType, _eventNumber, _function)
	{
		var _eventName = __get_event_name(_eventType, _eventNumber);
		__events[$ _eventName] = method(__owner, _function);
		return self;
	}
	
	static run = function(_eventType, _eventNumber)
	{
		var _eventName = __get_event_name(event_type, event_number);
		if (!variable_struct_exists(__events, _eventName))
		{
			if (SSTATE_SHOW_MISSING_EVENT_WARNING)
				__sstate_print("state ", __id, " doesn't contain an event for \"", _eventName, "\"!");
			
			return;
		}
		
		__events[$ _eventName]();
	}
	
	static set_on_enter = function(_onEnter)
	{
		__onEnter = _onEnter;
		return self;
	}
	
	static set_on_exit = function(_onExit)
	{
		__onExit = _onExit;
		return self;
	}
	
	static set = function(_propertyName, _propertyValue)
	{
		__properties[$ _propertyName] = _propertyValue;
		return self;
	}
	
	static get = function(_propertyName, _defaultValue = undefined)
	{
		if (!variable_struct_exists(__properties, _propertyName))
		{
			if (SSTATE_SHOW_MISSING_PROPERTY_WARNING)
				__sstate_print("state ", __id, " doesn't contain a property called \"", _propertyName, "\"!");
			
			return _defaultValue;
		}
		
		return __properties[$ _propertyName];
	}
	
	static __enter = function()
	{
		__onEnter();
	}
	
	static __exit = function()
	{
		__onExit();
	}
	
	static __get_event_name = function(_eventType, _eventNumber)
	{
		return (string(_eventType) + "::" + string(_eventNumber));
	}
	
	__id = _id;
	__owner = _owner;
	
	__onEnter = __sstate_func_empty;
	__onExit = __sstate_func_empty;
	
	__events = { };
	__properties = { };
}