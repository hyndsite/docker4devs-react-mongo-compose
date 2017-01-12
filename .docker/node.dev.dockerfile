FROM maxmccarty/hackershall-prod-i

ENV NODE_ENV=development

CMD ["./.docker/node_scripts/initialize.sh"]