FROM python:3.10-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Install necessary packages
RUN apk update && apk add --no-cache \
    bash \
    git \
    curl \
    openrc \
    cronie

# Clone the GitHub repository
RUN git clone https://github.com/e-alizadeh/Zotero2Readwise.git .

# Install the required packages
RUN pip install zotero2readwise

# Add the cron job
RUN echo "* * * * * /usr/local/bin/python /usr/src/app/Zotero2Readwise/zotero2readwise/run.py $READWISE_API_KEY $ZOTERO_API_KEY $ZOTERO_USER_ID >> /var/log/cron.log 2>&1" > /etc/crontabs/root

# Start the cron daemon
CMD ["crond", "-f"]
