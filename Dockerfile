FROM nginx:1.25-alpine

# Copier tous les fichiers statiques
COPY . /usr/share/nginx/html

# Copier la config nginx (optionnel)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Permissions
RUN chown -R nginx:nginx /usr/share/nginx/html

EXPOSE 80