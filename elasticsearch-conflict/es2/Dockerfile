FROM elasticsearch:1.7
RUN apt-get install -y curl
WORKDIR /elasticsearch
COPY . ./
CMD ["bash", "initialize_database.sh"]
