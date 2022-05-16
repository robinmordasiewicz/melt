FROM mltframework/melt:latest 

ENTRYPOINT ["/usr/bin/dumb-init", "--", "/usr/bin/xvfb-run", "-a", "./mlt.sh"]

#RUN apt-get install -y python3-pip
#RUN pip install gTTS

RUN groupadd -g 1000 ubuntu
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g 1000 -G sudo -u 1000 ubuntu
RUN touch /home/ubuntu/.sudo_as_admin_successful
RUN touch /home/ubuntu/.hushlogin
USER ubuntu:ubuntu
