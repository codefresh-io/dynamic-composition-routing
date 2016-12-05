# dynamic-composition-routing
Dynamically expose compositions through predictable URLs, using `nginx`, `registrator`, `consul` and `consul-template`.

Assuming every composition is assigned a unique project ID, and assuming every service in the composition is labeled with `export_project=$INSERT_PROJECT_ID`, every service will be accessible via:
`http://host/$PROJECT_ID/$SERVICE_NAME`

# Usage
Simply run `docker-compose up`
