#!/bin/sh

until nc -z -v -w30 db 5432
do
  echo "Waiting for PostgreSQL to start..."
  sleep 5
done
echo "PostgreSQL is up and running!"

npx prisma migrate dev
npx prisma db seed

npm run dev
