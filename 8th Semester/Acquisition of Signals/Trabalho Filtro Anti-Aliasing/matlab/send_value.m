function send_value(s1,value);

srl_write(s1,uint8(255));
srl_write(s1,uint8(value));
%string_sent = sprintf("%c%c",255,value);
%srl_write(s1,string_sent);
end
