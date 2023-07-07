function __smachine_print()
{
	var _string = "########## SMachine: ";
    var _i = 0;
    repeat(argument_count)
    {
        _string += string(argument[_i]);
        ++_i;
    }
    
    show_debug_message(_string);
}

function __smachine_func_empty() { }