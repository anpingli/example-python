
def application(environ, start_response):
    start_response('200 OK', [('Content-Type','text/html')])
    return [b"Openshfit 1178 V3from gunicorn WSGI application!"]
