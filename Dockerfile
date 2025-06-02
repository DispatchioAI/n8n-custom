#############################################
# 1) We start from the official n8n Docker image
#############################################
FROM n8nio/n8n:latest

#############################################
# 2) Switch to root user so we can install packages
#############################################
USER root

#############################################
# 3) Install any npm packages you need globally or locally
#    Here, chrono-node is our example
#############################################
RUN cd /usr/local/lib/node_modules/n8n \
    && npm install chrono-node --save

#############################################
# 4) We do NOT change anything else; we simply keep
#    using the same CMD that n8n uses by default
#############################################
USER node
