FROM node:10-slim

LABEL version="1.0.0"
LABEL repository="http://github.com/ryanwild/yarn"
LABEL homepage="http://github.com/ryanwild/yarn"
LABEL maintainer="Ryan Wild <ryan.loves.js@gmail.com>"

LABEL com.github.actions.name="GitHub Action for yarn"
LABEL com.github.actions.description="Wraps the yarn CLI to enable common yarn commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="blue"
COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
