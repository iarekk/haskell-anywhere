FROM haskell:8
COPY . /opt/your-project
WORKDIR /opt/your-project
RUN stack setup
RUN stack build
CMD ["stack","exec","your-executable"]
