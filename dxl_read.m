function res = dxl_read(id, address)
global Address
    if address.type == Address.type.WORD
        res = int32(calllib('dynamixel','dxl_read_word', id, address.value));
    else
        res = int32(calllib('dynamixel','dxl_read_byte', id, address.value));
    end
end