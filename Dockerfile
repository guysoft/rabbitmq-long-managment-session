FROM rabbitmq:3.8.14-management
RUN  echo "management.login_session_timeout = 99999999" >> /etc/rabbitmq/rabbitmq.conf
RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf

EXPOSE 4369 5671 5672 15671 15672 25672

CMD ["rabbitmq-server"]
