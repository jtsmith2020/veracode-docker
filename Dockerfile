FROM python:3.7.0-alpine3.8

ADD main.py /veracode/main.py
ADD helpers/* /veracode/helpers/
ADD lib/* /veracode/lib/

RUN pip install /veracode/lib/security_apisigning_python-17.9.1-py2.py3-none-any.whl

CMD [ "python", "/veracode/main.py" ]