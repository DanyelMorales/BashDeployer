@echo "-- EMPAQUETANDO & INSTALANDO --"
FOR %%a IN (%*) DO (
	mvn -DskipTests  package -f %%a
	mvn -DskipTests  install -f %%a
)