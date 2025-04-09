FROM cypress/base:latest

WORKDIR /home/cypress/

RUN apt-get update && apt install -y default-jre

COPY . /home/cypress/

VOLUME [ "/home/cyprees/allure-report" ]

RUN npm install

CMD ["npm", "run", "test:allure"]