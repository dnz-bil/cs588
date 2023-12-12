1) prepare_dump.sh sql dump ı indirip açıyor.

2) run_sql_script.sh :
	27. satırdaki 'path_to_output_file' string'i ile csv file'ın yazılacağı path değiştirilmeli.
	"../output_dir/output.csv" gibi

3) outputun yazılacağı directory'ye okuma yazma yetkisi verilmesi gerekiyor.
	command:"chmod u+w directory_path"
	
4) script çalıştığında database yaratılıp sql dump başarılı bir şekilde yüklenirse sonraki sorgular için aşağıdaki iki komut comment out yapılabilir.
	
	sudo -u $PG_USER createdb $DB_NAME
	sudo -u $PG_USER psql -d $DB_NAME -f $DB_DUMP_FILE
