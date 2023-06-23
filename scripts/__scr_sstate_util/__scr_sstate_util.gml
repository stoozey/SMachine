function __sstate_print()
{
	var _string = "########## SState: ";
    var _i = 0;
    repeat(argument_count)
    {
        _string += string(argument[_i]);
        ++_i;
    }
    
    return show_debug_message(_string);
}

function __sstate_func_empty() { }