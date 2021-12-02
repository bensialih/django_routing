cd /main

gunicorn --env SCRIPT_NAME=/api \
 --workers=2 'main.wsgi' -b :8000 -D \
 --access-logfile /tmp/main_access.log \
 --error-logfile /tmp/main_error.log


cd /auxiliary

gunicorn --workers=2 'auxiliary.wsgi' -b :8001 -D \
 --env SCRIPT_NAME=/aux \
 --access-logfile /tmp/auxiliary_access.log \
 --error-logfile /tmp/auxiliary_error.log

traefik
