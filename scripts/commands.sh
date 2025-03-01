#!/bin/sh

#O shell irá encerrar a execução do script se algum comando falhar

wait_psql.sh
collectstatic.sh
migrate.sh
runserver.sh