FROM swaggerapi/swagger-ui

ENV USERMAP_UID 1000
ENV SWAGGER_JSON=/app/swagger.yml
ENV PORT 3000

COPY swagger.yml /app/swagger.yml

RUN touch /var/run/nginx.pid && \
    chown -R 1000 /usr/share/nginx /etc/nginx /var /app /var/run/nginx.pid

EXPOSE 3000

USER ${USERMAP_UID}

CMD ["sh", "/usr/share/nginx/run.sh"]
