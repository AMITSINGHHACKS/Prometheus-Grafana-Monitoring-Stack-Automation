
sudo wget https://github.com/prometheus/alertmanager/releases/download/v0.27.0/alertmanager-0.27.0.linux-amd64.tar.gz -O Alertmanager.tar.gz
sudo tar -xvf Alertmanager.tar.gz
EXTRACTED_DIR=$(tar -tzf Alertmanager.tar.gz | head -1 | cut -f1 -d"/")
sudo mv $EXTRACTED_DIR Alertmanager
sudo rm Alertmanager.tar.gz
cd Alertmanager
./alertmanager &
echo "Alertmanager has been downloaded and extracted to the 'Alertmanager' directory."