FROM cm2network/steamcmd:root

USER steam
RUN mkdir /home/steam/onset
WORKDIR /home/steam/onset

RUN /home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/steam/onset +app_update 1204170 +quit && \
    rm -r /home/steam/onset/packages/ OnsetServer.exe start_linux.sh

COPY --chown=steam:steam packages /home/steam/onset/packages
COPY --chown=steam:steam shared/world.json /home/steam/onset/
COPY --chown=steam:steam shared/weapons.json /home/steam/onset/
COPY --chown=steam:steam shared/start_linux.sh /home/steam/onset/
COPY --chown=steam:steam shared/server_config.json /home/steam/onset/

RUN chmod +x start_linux.sh 

CMD ./start_linux.sh
