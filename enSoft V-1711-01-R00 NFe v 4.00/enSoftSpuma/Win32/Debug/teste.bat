echo off pg_dump --host localhost --port 5432 --username "postgres"  --role "postgres" --no-password  --format c  --blobs --verbose --file "C:\MaxInfo\projetosGit\enSoft V-1711-01-R00 NFe v 4.00\enSoftSpuma\Win32\Debug\backup\emp1_10122019.backup" "enSoftGloboP171019" 

pg_dump --host localhost --port 5432 --username "postgres"  --role "postgres" -w  --format c  --blobs --verbose --file "C:\MaxInfo\projetosGit\enSoft V-1711-01-R00 NFe v 4.00\enSoftSpuma\Win32\Debug\backup\emp1_10122019.backup" "enSoftGloboP171019" 
