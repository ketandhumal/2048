FROM nginx:alpine

WORKDIR /usr/share/nginx/html

# Copy only game files (avoid extra stuff)
COPY index.html .
COPY favicon.ico .
COPY style/ ./style/
COPY js/ ./js/
COPY meta/ ./meta/

EXPOSE 80

