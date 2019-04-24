#### Balu added File output

#!/usr/bin/python3

import http.server
import socketserver

port = 9966
Handler = http.server.SimpleHTTPRequestHandler

#f = open("/var/tmp/pyServer.log", "w");
#f.write("Trying to start server at port: \n")
#f.write("Hello From RLM ")
#f.close()

print("==========================================")
print("Trying to start server at port: ", port)
print("Hello From RLM ")
print("==========================================")

with socketserver.TCPServer(("", port), Handler) as httpd:
    print("Server started at port: ", port)
    httpd.serve_forever()

print("========== Server Ended ===============")

