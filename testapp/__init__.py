
def application(environ, start_response):
    start_response('200 OK', [('Content-Type','text/html')])
    return [b"Openshfit 941 V3from gunicorn WSGI application!"]
