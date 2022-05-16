FROM mltframework/melt:latest 

#ENTRYPOINT ["/usr/bin/dumb-init", "--", "/usr/bin/xvfb-run", "-a", "/usr/local/bin/melt"]
#ENTRYPOINT ["/usr/bin/dumb-init", "--", "/usr/bin/xvfb-run", "-a", "/usr/local/bin/melt intro.mlt -consumer avformat:intro.mp4 f=mp4 s=1920x1080 pix_fmt=yuv420p r=29.97 use_wallclock_as_timestamps=1 enc_time_base=-1"]

#RUN apt-get install -y python3-pip
#RUN pip install gTTS

RUN groupadd -g 1000 ubuntu
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g 1000 -G sudo -u 1000 ubuntu
RUN touch /home/ubuntu/.sudo_as_admin_successful
RUN touch /home/ubuntu/.hushlogin
USER ubuntu:ubuntu

#CMD ./mlt.sh
