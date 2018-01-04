FROM python:2-alpine

LABEL maintainer "Pedro Pereira <pedrogoncalvesp.95@gmail.com>"

RUN apk add -U --no-cache iptables ip6tables
RUN pip install redis ipaddress

COPY logwatch.py /

RUN chmod +x /logwatch.py

CMD ["python2", "-u", "/logwatch.py"]
