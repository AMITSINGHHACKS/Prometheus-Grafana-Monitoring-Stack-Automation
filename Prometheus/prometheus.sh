#########################################

sudo wget https://github.com/prometheus/prometheus/releases/download/v2.53.1/prometheus-2.53.1.linux-amd64.tar.gz -O prometheus.tar.gz
sudo tar -xvf prometheus.tar.gz
EXTRACTED_DIR=$(tar -tzf prometheus.tar.gz | head -1 | cut -f1 -d"/")
sudo mv $EXTRACTED_DIR prometheus
sudo rm prometheus.tar.gz
cd prometheus
./prometheus &
echo "Prometheus has been downloaded and extracted to the 'prometheus' directory."