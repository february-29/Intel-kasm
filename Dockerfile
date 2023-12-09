FROM kasmweb/desktop-deluxe:1.14.0

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai
ENV imageVersion=1.0



# Download Albion
RUN cd ~ \
    && wget -O albien https://live.albiononline.com/clients/20231127100544/albion-online-setup \
    && chmod a+x albien

# Disable HTTPS

RUN cd ~/.vnc \
  && echo "network:" >> kasmvnc.yaml \
  && echo "    ssl:" >>  kasmvnc.yaml \
  && echo "        require_ssl: false" >>  kasmvnc.yaml
