
def application(environ, start_response):
    start_response('200 OK', [('Content-Type','text/html')])
    return [b"Openshfit 2123 V3 from gunicorn WSGI application!"]
