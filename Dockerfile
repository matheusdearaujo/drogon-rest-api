FROM drogonframework/drogon

RUN mkdir ../app

WORKDIR /install/app

RUN useradd drogon

RUN usermod -u 1000 drogon && \
	usermod -a -G users drogon && \
	chown -R drogon:drogon /install/app

USER drogon

COPY --chown=drogon:drogon . .

RUN chmod +x deploy.sh  

CMD sh deploy.sh 
