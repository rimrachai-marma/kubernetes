CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL
);

INSERT INTO items (title) VALUES ('Buy milk'), ('Finish homework');
-- docker exec -it postgresdb sh
-- kubectl exec -it postgres-deployment-764f8b7bfd-gwxwf -- sh

-- psql PGPASSWORD=<password> psql -U <postgres-user> -d <database-name>

-- psql -U postgres -d permalist

kubectl apply -f postgres-pv.yml
kubectl apply -f postgres-pvc.yml
kubectl apply -f postgres-config.yml
kubectl apply -f postgres-secret.yml
kubectl apply -f postgres-db.yml
kubectl apply -f permalist-app.yml