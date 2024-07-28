
sudo wget https://github.com/prometheus/node_exporter/releases/download/v1.8.2/node_exporter-1.8.2.linux-amd64.tar.gz -O nodexp.tar.gz
sudo tar -xvf nodexp.tar.gz
EXTRACTED_DIR=$(tar -tzf nodexp.tar.gz | head -1 | cut -f1 -d"/")
sudo mv $EXTRACTED_DIR nodexp
sudo rm nodexp.tar.gz
cd nodexp
./alertmanager &
echo "nodexp has been downloaded and extracted to the 'nodexp' directory."