FROM google/cloud-sdk:269.0.0-alpine

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN gcloud components install beta
RUN gcloud components update

ENTRYPOINT ["/entrypoint.sh"]
CMD ["info"]
