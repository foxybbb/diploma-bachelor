FROM ubuntu:latest

# non interactive frontend for locales
ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true
ENV DIR /diploma-bachelor

RUN mkdir $DIR && \
    echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | debconf-set-selections

RUN apt update && \
    apt install --no-install-recommends -y \
        wget \
        curl \
        git \
        make \
        pandoc \
        unzip && \
    apt install --no-install-recommends -y \
        texlive-base \
        texlive-latex-extra \
        texlive-extra-utils \
        texlive-xetex \
        texlive-lang-cyrillic \
        texlive-fonts-extra \
        texlive-science \
        texlive-latex-recommended \
        latexmk \
        procps zip \
        biber \ 
        texlive-bibtex-extra \
        locales \
        python3-pygments \
        cpan -i App::cpanminus \
        cpanm YAML::Tiny \
        cpanm File::HomeDir \

# Times New Roman and other fonts
RUN apt install --no-install-recommends --reinstall -y \
    ttf-mscorefonts-installer \
    fonts-freefont-ttf \
    fontconfig && \
    wget -O /usr/share/fonts/xits-math.otf https://github.com/khaledhosny/xits-math/raw/master/XITSMath-Regular.otf && \
    wget https://ftp.tw.freebsd.org/distfiles/xorg/font/PTSansOFL.zip && \
    wget https://ftp.tw.freebsd.org/distfiles/xorg/font/PTMonoOFL.zip && \
    unzip -o PTSansOFL.zip -d /usr/share/fonts/ && unzip -o PTMonoOFL.zip -d /usr/share/fonts/ && \
    rm -f PTSansOFL.zip PTMonoOFL.zip && \
    fc-cache -f -v
    
# generating locales
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8 LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8

VOLUME $DIR
WORKDIR $DIR