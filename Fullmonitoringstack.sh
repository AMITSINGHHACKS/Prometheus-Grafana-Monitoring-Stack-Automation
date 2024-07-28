#######################################################################################
################################## Prometheus #########################################

sudo wget https://github.com/prometheus/prometheus/releases/download/v2.53.1/prometheus-2.53.1.linux-amd64.tar.gz -O prometheus.tar.gz
sudo tar -xvf prometheus.tar.gz
EXTRACTED_DIR=$(tar -tzf prometheus.tar.gz | head -1 | cut -f1 -d"/")
sudo mv $EXTRACTED_DIR prometheus
sudo rm prometheus.tar.gz
cd prometheus
./prometheus &
echo "Prometheus has been downloaded and extracted to the 'prometheus' directory."
cd ..




#######################################################################################
################################## AlertManager #######################################

sudo wget https://github.com/prometheus/alertmanager/releases/download/v0.27.0/alertmanager-0.27.0.linux-amd64.tar.gz -O Alertmanager.tar.gz
sudo tar -xvf Alertmanager.tar.gz
EXTRACTED_DIR=$(tar -tzf Alertmanager.tar.gz | head -1 | cut -f1 -d"/")
sudo mv $EXTRACTED_DIR Alertmanager
sudo rm Alertmanager.tar.gz
cd Alertmanager
./alertmanager &
echo "Alertmanager has been downloaded and extracted to the 'Alertmanager' directory."
cd ..





#######################################################################################
################################## NODE_EXPORTER ######################################

sudo wget https://github.com/prometheus/node_exporter/releases/download/v1.8.2/node_exporter-1.8.2.linux-amd64.tar.gz -O nodexp.tar.gz
sudo tar -xvf nodexp.tar.gz
EXTRACTED_DIR=$(tar -tzf nodexp.tar.gz | head -1 | cut -f1 -d"/")
sudo mv $EXTRACTED_DIR nodexp
sudo rm nodexp.tar.gz
cd nodexp
./alertmanager &
echo "nodexp has been downloaded and extracted to the 'nodexp' directory."
cd ..




#######################################################################################
################################## GRAFANA ############################################

sudo wget https://dl.grafana.com/enterprise/release/grafana-enterprise-11.1.3.linux-amd64.tar.gz -O grafana.tar.gz
sudo tar -xvf grafana.tar.gz
EXTRACTED_DIR=$(tar -tzf grafana.tar.gz | head -1 | cut -f1 -d"/")
sudo mv $EXTRACTED_DIR grafana
sudo rm grafana.tar.gz
cd grafana
./bin/grafana-server &
echo "grafana has been downloaded and extracted to the 'grafana' directory."
cd ..