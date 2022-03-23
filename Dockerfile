FROM jeanlescure/node-awscli:latest

LABEL "com.github.actions.name"="React Deploy to S3"
LABEL "com.github.actions.description"="Build a React.js web app and sync to an AWS S3 repository"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

LABEL version="1.1.0"
LABEL repository="https://github.com/jeanlescure/react-deploy-to-s3-action"
LABEL homepage="https://jeanlescure.io/"
LABEL maintainer="Jean Lescure <opensource@jeanlescure.io>"

ENV PATH /github/workspace/node_modules/.bin:$PATH
ADD entrypoint.sh /entrypoint.sh
RUN apt-get update
RUN apt-get install -y gconf-service libasound2 libatk1.0-0 libatk-bridge2.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget
RUN apt-get install -y libgbm-dev
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
