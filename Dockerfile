FROM nginx:alpine
WORKDIR /usr/share/nginx/html

# Remove the default nginx page
RUN rm -rf ./*

# Copy only your 2048 game files
COPY index.html .
COPY favicon.ico .
COPY style/ ./style/
COPY js/ ./js/
COPY meta/ ./meta/

EXPOSE 80
