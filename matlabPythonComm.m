filename = 'test.h5'

serverstr = ['GET /file/' filename ' HTTP/1.1'];
disp(serverstr)
t = tcpip('localhost', 5000,'Timeout', 5);
fopen(t);
fwrite(t, serverstr);
bytes = fread(t, [1, t.BytesAvailable]);
char(bytes)
fclose(t);
