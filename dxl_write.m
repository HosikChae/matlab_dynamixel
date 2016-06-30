function dxl_write(id, address, value);
    global Address
    if address.type == Address.type.WORD
        calllib('dynamixel','dxl_write_word', id, address.value, value);
    else
        calllib('dynamixel','dxl_write_byte', id, address.value, value);
    end
end