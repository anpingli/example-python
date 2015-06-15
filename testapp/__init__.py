
def application(environ, start_response):
    start_response('200 OK', [('Content-Type','text/html')])
    return [b"Openshift 1 V3from gunicorn WSGI application!"]
