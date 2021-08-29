module FA(input a,b,cin,
output cout,sum);

HA HA1(.a(a),.b(b),.s(s1),.c(c1));
HA HA2(.a(cin),.b(c1),.s(sum),.c(c2));

assign cout = c1 | c2;

endmodule