
def application(environ, start_response):
    start_response('200 OK', [('Content-Type','text/html')])
    return [b"Openshift  V3 from gunicorn WSGI application!"]
