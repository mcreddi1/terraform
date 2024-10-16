# terraform

for i in $(ls -dr */) ; do echo ${i%/}; cd  ${i%/} ; terraform destroy -auto-approve ; cd .. ; done

for i in $(ls -d */) ; do echo ${i%/}; cd  ${i%/} ; terraform apply -auto-approve ; cd .. ; done