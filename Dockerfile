FROM node:16
RUN git clone https:https://github.com/Inconnuboy34/Lone-tomioka- /root/INCONNU TECH 
WORKDIR /root/inconnu-tech
RUN npm install
EXPOSE 3000
CMD ["npm","start" ] 
#LAUREAT
